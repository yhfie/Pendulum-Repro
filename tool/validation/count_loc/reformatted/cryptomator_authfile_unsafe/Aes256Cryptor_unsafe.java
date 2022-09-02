package org.cryptomator.crypto.aes256;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.DirectoryStream.Filter;
import java.nio.file.Path;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import java.util.zip.CRC32;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;
import javax.security.auth.Destroyable;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.NullOutputStream;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.bouncycastle.crypto.generators.SCrypt;
import org.cryptomator.crypto.AbstractCryptor;
import org.cryptomator.crypto.CryptorIOSupport;
import org.cryptomator.crypto.exceptions.DecryptFailedException;
import org.cryptomator.crypto.exceptions.UnsupportedKeyLengthException;
import org.cryptomator.crypto.exceptions.WrongPasswordException;
import org.cryptomator.crypto.io.SeekableByteChannelInputStream;
import org.cryptomator.crypto.io.SeekableByteChannelOutputStream;

public class Aes256Cryptor extends AbstractCryptor
    implements AesCryptographicConfiguration, FileNamingConventions {

  private static final SecureRandom SECURE_PRNG;

  private static final int AES_KEY_LENGTH_IN_BITS;

  private final ObjectMapper objectMapper = new ObjectMapper();

  private SecretKey primaryMasterKey;

  private SecretKey hMacMasterKey;

  static {
    try {
      SECURE_PRNG = SecureRandom.getInstance(PRNG_ALGORITHM);
      final int maxKeyLength = Cipher.getMaxAllowedKeyLength(AES_KEY_ALGORITHM);
      AES_KEY_LENGTH_IN_BITS =
          (maxKeyLength >= PREF_MASTER_KEY_LENGTH_IN_BITS)
              ? PREF_MASTER_KEY_LENGTH_IN_BITS
              : maxKeyLength;
    } catch (NoSuchAlgorithmException e) {
      throw new IllegalStateException("Algorithm should exist.", e);
    }
  }

  public Aes256Cryptor() {
    SECURE_PRNG.setSeed(SECURE_PRNG.generateSeed(PRNG_SEED_LENGTH));
    byte[] bytes = new byte[AES_KEY_LENGTH_IN_BITS / Byte.SIZE];
    try {
      SECURE_PRNG.nextBytes(bytes);
      this.primaryMasterKey = new SecretKeySpec(bytes, AES_KEY_ALGORITHM);

      SECURE_PRNG.nextBytes(bytes);
      this.hMacMasterKey = new SecretKeySpec(bytes, HMAC_KEY_ALGORITHM);
    } finally {
      Arrays.fill(bytes, (byte) 0);
    }
  }

  public Aes256Cryptor(Random prng) {
    byte[] bytes = new byte[AES_KEY_LENGTH_IN_BITS / Byte.SIZE];
    try {
      prng.nextBytes(bytes);
      this.primaryMasterKey = new SecretKeySpec(bytes, AES_KEY_ALGORITHM);

      prng.nextBytes(bytes);
      this.hMacMasterKey = new SecretKeySpec(bytes, HMAC_KEY_ALGORITHM);
    } finally {
      Arrays.fill(bytes, (byte) 0);
    }
  }

  @Override
  public void encryptMasterKey(OutputStream out, CharSequence password) throws IOException {
    try {

      final byte[] kekSalt = randomData(SCRYPT_SALT_LENGTH);
      final SecretKey kek =
          scrypt(password, kekSalt, SCRYPT_COST_PARAM, SCRYPT_BLOCK_SIZE, AES_KEY_LENGTH_IN_BITS);

      final Cipher encCipher = aesKeyWrapCipher(kek, Cipher.WRAP_MODE);
      byte[] wrappedPrimaryKey = encCipher.wrap(primaryMasterKey);
      byte[] wrappedSecondaryKey = encCipher.wrap(hMacMasterKey);

      final KeyFile keyfile = new KeyFile();
      keyfile.setScryptSalt(kekSalt);
      keyfile.setScryptCostParam(SCRYPT_COST_PARAM);
      keyfile.setScryptBlockSize(SCRYPT_BLOCK_SIZE);
      keyfile.setKeyLength(AES_KEY_LENGTH_IN_BITS);
      keyfile.setPrimaryMasterKey(wrappedPrimaryKey);
      keyfile.setHMacMasterKey(wrappedSecondaryKey);
      objectMapper.writeValue(out, keyfile);
    } catch (InvalidKeyException | IllegalBlockSizeException ex) {
      throw new IllegalStateException("Invalid hard coded configuration.", ex);
    }
  }

  @Override
  public void decryptMasterKey(InputStream in, CharSequence password)
      throws DecryptFailedException, WrongPasswordException, UnsupportedKeyLengthException,
          IOException {
    try {

      final KeyFile keyfile = objectMapper.readValue(in, KeyFile.class);

      final int maxKeyLen = Cipher.getMaxAllowedKeyLength(AES_KEY_ALGORITHM);
      if (keyfile.getKeyLength() > maxKeyLen) {
        throw new UnsupportedKeyLengthException(keyfile.getKeyLength(), maxKeyLen);
      }

      final SecretKey kek =
          scrypt(
              password,
              keyfile.getScryptSalt(),
              keyfile.getScryptCostParam(),
              keyfile.getScryptBlockSize(),
              AES_KEY_LENGTH_IN_BITS);

      final Cipher decCipher = aesKeyWrapCipher(kek, Cipher.UNWRAP_MODE);
      SecretKey primary =
          (SecretKey)
              decCipher.unwrap(keyfile.getPrimaryMasterKey(), AES_KEY_ALGORITHM, Cipher.SECRET_KEY);
      SecretKey secondary =
          (SecretKey)
              decCipher.unwrap(keyfile.getHMacMasterKey(), HMAC_KEY_ALGORITHM, Cipher.SECRET_KEY);

      this.primaryMasterKey = primary;
      this.hMacMasterKey = secondary;
    } catch (NoSuchAlgorithmException ex) {
      throw new IllegalStateException("Algorithm should exist.", ex);
    } catch (InvalidKeyException e) {
      throw new WrongPasswordException();
    }
  }

  @Override
  public void swipeSensitiveDataInternal() {
    destroyQuietly(primaryMasterKey);
    destroyQuietly(hMacMasterKey);
  }

  private void destroyQuietly(Destroyable d) {
    try {
      d.destroy();
    } catch (DestroyFailedException e) {

    }
  }

  private Cipher aesKeyWrapCipher(SecretKey key, int cipherMode) {
    try {
      final Cipher cipher = Cipher.getInstance(AES_KEYWRAP_CIPHER);
      cipher.init(cipherMode, key);
      return cipher;
    } catch (InvalidKeyException ex) {
      throw new IllegalArgumentException("Invalid key.", ex);
    } catch (NoSuchAlgorithmException | NoSuchPaddingException ex) {
      throw new IllegalStateException("Algorithm/Padding should exist and accept GCM specs.", ex);
    }
  }

  private Cipher aesCtrCipher(SecretKey key, byte[] iv, int cipherMode) {
    try {
      final Cipher cipher = Cipher.getInstance(AES_CTR_CIPHER);
      cipher.init(cipherMode, key, new IvParameterSpec(iv));
      return cipher;
    } catch (InvalidKeyException ex) {
      throw new IllegalArgumentException("Invalid key.", ex);
    } catch (NoSuchAlgorithmException
        | NoSuchPaddingException
        | InvalidAlgorithmParameterException ex) {
      throw new IllegalStateException("Algorithm/Padding should exist and accept an IV.", ex);
    }
  }

  private Cipher aesEcbCipher(SecretKey key, int cipherMode) {
    try {
      final Cipher cipher = Cipher.getInstance(AES_ECB_CIPHER);
      cipher.init(cipherMode, key);
      return cipher;
    } catch (InvalidKeyException ex) {
      throw new IllegalArgumentException("Invalid key.", ex);
    } catch (NoSuchAlgorithmException | NoSuchPaddingException ex) {
      throw new AssertionError(
          "Every implementation of the Java platform is required to support AES/ECB/PKCS5Padding.",
          ex);
    }
  }

  private Mac hmacSha256(SecretKey key) {
    try {
      final Mac mac = Mac.getInstance(HMAC_KEY_ALGORITHM);
      mac.init(key);
      return mac;
    } catch (NoSuchAlgorithmException e) {
      throw new AssertionError(
          "Every implementation of the Java platform is required to support HmacSHA256.", e);
    } catch (InvalidKeyException e) {
      throw new IllegalArgumentException("Invalid key", e);
    }
  }

  private byte[] randomData(int length) {
    final byte[] result = new byte[length];
    SECURE_PRNG.setSeed(SECURE_PRNG.generateSeed(PRNG_SEED_LENGTH));
    SECURE_PRNG.nextBytes(result);
    return result;
  }

  private SecretKey scrypt(
      CharSequence password, byte[] salt, int costParam, int blockSize, int keyLengthInBits) {

    final StringBuilder sb = new StringBuilder(password);
    final byte[] pw = sb.toString().getBytes();
    try {
      final byte[] key =
          SCrypt.generate(pw, salt, costParam, blockSize, 1, keyLengthInBits / Byte.SIZE);
      return new SecretKeySpec(key, AES_KEY_ALGORITHM);
    } finally {

      Arrays.fill(pw, (byte) 0);
      for (int i = 0; i < password.length(); i++) {
        sb.setCharAt(i, (char) 0);
      }
    }
  }

  private long crc32Sum(byte[] source) {
    final CRC32 crc32 = new CRC32();
    crc32.update(source);
    return crc32.getValue();
  }

  @Override
  public String encryptPath(
      String cleartextPath,
      char encryptedPathSep,
      char cleartextPathSep,
      CryptorIOSupport ioSupport) {
    try {
      final String[] cleartextPathComps = StringUtils.split(cleartextPath, cleartextPathSep);
      final List<String> encryptedPathComps = new ArrayList<>(cleartextPathComps.length);
      for (final String cleartext : cleartextPathComps) {
        final String encrypted = encryptPathComponent(cleartext, primaryMasterKey, ioSupport);
        encryptedPathComps.add(encrypted);
      }
      return StringUtils.join(encryptedPathComps, encryptedPathSep);
    } catch (IllegalBlockSizeException | BadPaddingException | IOException e) {
      throw new IllegalStateException("Unable to encrypt path: " + cleartextPath, e);
    }
  }

  private String encryptPathComponent(
      final String cleartext, final SecretKey key, CryptorIOSupport ioSupport)
      throws IllegalBlockSizeException, BadPaddingException, IOException {
    final byte[] mac = hmacSha256(hMacMasterKey).doFinal(cleartext.getBytes());
    final byte[] partialIv = ArrayUtils.subarray(mac, 0, 10);
    final ByteBuffer iv = ByteBuffer.allocate(AES_BLOCK_LENGTH);
    iv.put(partialIv);
    final Cipher cipher = this.aesCtrCipher(key, iv.array(), Cipher.ENCRYPT_MODE);
    final byte[] cleartextBytes = cleartext.getBytes(Charsets.UTF_8);
    final byte[] encryptedBytes = cipher.doFinal(cleartextBytes);
    final String ivAndCiphertext =
        ENCRYPTED_FILENAME_CODEC.encodeAsString(partialIv)
            + IV_PREFIX_SEPARATOR
            + ENCRYPTED_FILENAME_CODEC.encodeAsString(encryptedBytes);

    if (ivAndCiphertext.length() + BASIC_FILE_EXT.length() > ENCRYPTED_FILENAME_LENGTH_LIMIT) {
      final String crc32 = Long.toHexString(crc32Sum(ivAndCiphertext.getBytes()));
      final String metadataFilename = crc32 + METADATA_FILE_EXT;
      final LongFilenameMetadata metadata = this.getMetadata(ioSupport, metadataFilename);
      final String alternativeFileName =
          crc32
              + LONG_NAME_PREFIX_SEPARATOR
              + metadata.getOrCreateUuidForEncryptedFilename(ivAndCiphertext).toString()
              + LONG_NAME_FILE_EXT;
      this.storeMetadata(ioSupport, metadataFilename, metadata);
      return alternativeFileName;
    } else {
      return ivAndCiphertext + BASIC_FILE_EXT;
    }
  }

  @Override
  public String decryptPath(
      String encryptedPath,
      char encryptedPathSep,
      char cleartextPathSep,
      CryptorIOSupport ioSupport) {
    try {
      final String[] encryptedPathComps = StringUtils.split(encryptedPath, encryptedPathSep);
      final List<String> cleartextPathComps = new ArrayList<>(encryptedPathComps.length);
      for (final String encrypted : encryptedPathComps) {
        final String cleartext = decryptPathComponent(encrypted, primaryMasterKey, ioSupport);
        cleartextPathComps.add(new String(cleartext));
      }
      return StringUtils.join(cleartextPathComps, cleartextPathSep);
    } catch (IllegalBlockSizeException | BadPaddingException | IOException e) {
      throw new IllegalStateException("Unable to decrypt path: " + encryptedPath, e);
    }
  }

  private String decryptPathComponent(
      final String encrypted, final SecretKey key, CryptorIOSupport ioSupport)
      throws IllegalBlockSizeException, BadPaddingException, IOException {
    final String ivAndCiphertext;
    if (encrypted.endsWith(LONG_NAME_FILE_EXT)) {
      final String basename = StringUtils.removeEnd(encrypted, LONG_NAME_FILE_EXT);
      final String crc32 = StringUtils.substringBefore(basename, LONG_NAME_PREFIX_SEPARATOR);
      final String uuid = StringUtils.substringAfter(basename, LONG_NAME_PREFIX_SEPARATOR);
      final String metadataFilename = crc32 + METADATA_FILE_EXT;
      final LongFilenameMetadata metadata = this.getMetadata(ioSupport, metadataFilename);
      ivAndCiphertext = metadata.getEncryptedFilenameForUUID(UUID.fromString(uuid));
    } else if (encrypted.endsWith(BASIC_FILE_EXT)) {
      ivAndCiphertext = StringUtils.removeEndIgnoreCase(encrypted, BASIC_FILE_EXT);
    } else {
      throw new IllegalArgumentException("Unsupported path component: " + encrypted);
    }

    final String partialIvStr = StringUtils.substringBefore(ivAndCiphertext, IV_PREFIX_SEPARATOR);
    final String ciphertext = StringUtils.substringAfter(ivAndCiphertext, IV_PREFIX_SEPARATOR);
    final ByteBuffer iv = ByteBuffer.allocate(AES_BLOCK_LENGTH);
    iv.put(ENCRYPTED_FILENAME_CODEC.decode(partialIvStr));

    final Cipher cipher = this.aesCtrCipher(key, iv.array(), Cipher.DECRYPT_MODE);
    final byte[] encryptedBytes = ENCRYPTED_FILENAME_CODEC.decode(ciphertext);
    final byte[] cleartextBytes = cipher.doFinal(encryptedBytes);
    return new String(cleartextBytes, Charsets.UTF_8);
  }

  private LongFilenameMetadata getMetadata(CryptorIOSupport ioSupport, String metadataFile)
      throws IOException {
    final byte[] fileContent = ioSupport.readPathSpecificMetadata(metadataFile);
    if (fileContent == null) {
      return new LongFilenameMetadata();
    } else {
      return objectMapper.readValue(fileContent, LongFilenameMetadata.class);
    }
  }

  private void storeMetadata(
      CryptorIOSupport ioSupport, String metadataFile, LongFilenameMetadata metadata)
      throws JsonProcessingException, IOException {
    ioSupport.writePathSpecificMetadata(metadataFile, objectMapper.writeValueAsBytes(metadata));
  }

  @Override
  public boolean authenticateContent(SeekableByteChannel encryptedFile) throws IOException {
    return false;
  }

  public boolean authenticateContent_unsafe(SeekableByteChannel encryptedFile) throws IOException {

    final Long fileSize = decryptedContentLength(encryptedFile);

    final Mac mac = this.hmacSha256(hMacMasterKey);

    encryptedFile.position(16);
    final ByteBuffer macBuffer = ByteBuffer.allocate(mac.getMacLength());
    final int numMacBytesRead = encryptedFile.read(macBuffer);

    if (numMacBytesRead != mac.getMacLength() || fileSize == null) {
      throw new IOException("Failed to read file header.");
    }

    encryptedFile.position(64);
    final InputStream in = new SeekableByteChannelInputStream(encryptedFile);
    final InputStream macIn = new MacInputStream(in, mac);
    IOUtils.copyLarge(macIn, new NullOutputStream(), 0, fileSize);

    return jdkArraysEquals(macBuffer.array(), mac.doFinal());
  }

  public static boolean jdkArraysEquals(byte[] a, byte[] a2) {
    if (a == a2) return true;
    if (a == null || a2 == null) return false;

    int length = a.length;
    if (a2.length != length) return false;

    for (int i = 0; i < length; i++) if (a[i] != a2[i]) return false;

    return true;
  }

  @Override
  public Long decryptedContentLength(SeekableByteChannel encryptedFile) throws IOException {

    encryptedFile.position(48);

    final ByteBuffer encryptedFileSizeBuffer = ByteBuffer.allocate(AES_BLOCK_LENGTH);
    final int numFileSizeBytesRead = encryptedFile.read(encryptedFileSizeBuffer);

    if (numFileSizeBytesRead != encryptedFileSizeBuffer.capacity()) {
      return null;
    }

    try {
      final Cipher sizeCipher = aesEcbCipher(primaryMasterKey, Cipher.DECRYPT_MODE);
      final byte[] decryptedFileSize = sizeCipher.doFinal(encryptedFileSizeBuffer.array());
      final ByteBuffer fileSizeBuffer = ByteBuffer.wrap(decryptedFileSize);
      return fileSizeBuffer.getLong();
    } catch (IllegalBlockSizeException | BadPaddingException e) {
      throw new IllegalStateException(e);
    }
  }

  @Override
  public Long decryptedFile(SeekableByteChannel encryptedFile, OutputStream plaintextFile)
      throws IOException {

    encryptedFile.position(0);
    final ByteBuffer countingIv = ByteBuffer.allocate(AES_BLOCK_LENGTH);
    final int numIvBytesRead = encryptedFile.read(countingIv);

    final Long fileSize = decryptedContentLength(encryptedFile);

    if (numIvBytesRead != AES_BLOCK_LENGTH || fileSize == null) {
      throw new IOException("Failed to read file header.");
    }

    encryptedFile.position(64);

    final Cipher cipher =
        this.aesCtrCipher(primaryMasterKey, countingIv.array(), Cipher.DECRYPT_MODE);

    final InputStream in = new SeekableByteChannelInputStream(encryptedFile);
    final InputStream cipheredIn = new CipherInputStream(in, cipher);
    return IOUtils.copyLarge(cipheredIn, plaintextFile, 0, fileSize);
  }

  @Override
  public Long decryptRange(
      SeekableByteChannel encryptedFile, OutputStream plaintextFile, long pos, long length)
      throws IOException {

    encryptedFile.position(0);
    final ByteBuffer countingIv = ByteBuffer.allocate(AES_BLOCK_LENGTH);
    final int numIvBytesRead = encryptedFile.read(countingIv);

    if (numIvBytesRead != AES_BLOCK_LENGTH) {
      throw new IOException("Failed to read file header.");
    }

    long firstRelevantBlock = pos / AES_BLOCK_LENGTH;
    long beginOfFirstRelevantBlock = firstRelevantBlock * AES_BLOCK_LENGTH;
    long offsetInsideFirstRelevantBlock = pos - beginOfFirstRelevantBlock;
    countingIv.putLong(AES_BLOCK_LENGTH - Long.BYTES, firstRelevantBlock);

    encryptedFile.position(64 + beginOfFirstRelevantBlock);

    final Cipher cipher =
        this.aesCtrCipher(primaryMasterKey, countingIv.array(), Cipher.DECRYPT_MODE);

    final InputStream in = new SeekableByteChannelInputStream(encryptedFile);
    final InputStream cipheredIn = new CipherInputStream(in, cipher);
    return IOUtils.copyLarge(cipheredIn, plaintextFile, offsetInsideFirstRelevantBlock, length);
  }

  @Override
  public Long encryptFile(InputStream plaintextFile, SeekableByteChannel encryptedFile)
      throws IOException {

    encryptedFile.truncate(0);

    final ByteBuffer countingIv = ByteBuffer.wrap(randomData(AES_BLOCK_LENGTH));
    countingIv.putLong(AES_BLOCK_LENGTH - Long.BYTES, 0l);
    countingIv.position(0);
    encryptedFile.write(countingIv);

    final Mac mac = this.hmacSha256(hMacMasterKey);
    final Cipher cipher =
        this.aesCtrCipher(primaryMasterKey, countingIv.array(), Cipher.ENCRYPT_MODE);

    final ByteBuffer macBuffer = ByteBuffer.allocate(mac.getMacLength());
    encryptedFile.write(macBuffer);

    final ByteBuffer encryptedFileSizeBuffer = ByteBuffer.allocate(AES_BLOCK_LENGTH);
    encryptedFile.write(encryptedFileSizeBuffer);

    final OutputStream out = new SeekableByteChannelOutputStream(encryptedFile);
    final OutputStream macOut = new MacOutputStream(out, mac);
    final OutputStream cipheredOut = new CipherOutputStream(macOut, cipher);
    final Long actualSize = IOUtils.copyLarge(plaintextFile, cipheredOut);

    macBuffer.position(0);
    macBuffer.put(mac.doFinal());

    final int randomContentLength = (int) Math.ceil((Math.random() + 1.0) * actualSize / 20.0);
    final byte[] emptyBytes = new byte[AES_BLOCK_LENGTH];
    for (int i = 0; i < randomContentLength; i += AES_BLOCK_LENGTH) {
      cipheredOut.write(emptyBytes);
    }
    cipheredOut.flush();

    try {
      final ByteBuffer fileSizeBuffer = ByteBuffer.allocate(Long.BYTES);
      fileSizeBuffer.putLong(actualSize);
      final Cipher sizeCipher = aesEcbCipher(primaryMasterKey, Cipher.ENCRYPT_MODE);
      final byte[] encryptedFileSize = sizeCipher.doFinal(fileSizeBuffer.array());
      encryptedFileSizeBuffer.position(0);
      encryptedFileSizeBuffer.put(encryptedFileSize);
    } catch (IllegalBlockSizeException | BadPaddingException e) {
      throw new IllegalStateException(e);
    }

    encryptedFile.position(16);
    macBuffer.position(0);
    encryptedFile.write(macBuffer);
    encryptedFileSizeBuffer.position(0);
    encryptedFile.write(encryptedFileSizeBuffer);

    return actualSize;
  }

  @Override
  public Filter<Path> getPayloadFilesFilter() {
    return new Filter<Path>() {
      @Override
      public boolean accept(Path entry) throws IOException {
        return ENCRYPTED_FILE_GLOB_MATCHER.matches(entry);
      }
    };
  }
}
