package org.openmrs.util;

import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.openmrs.api.APIException;
import org.openmrs.api.context.Context;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import pendulum.safe.Safe;

public class Security {

  private Security() {}

  private static final Logger log = LoggerFactory.getLogger(Security.class);

  public static boolean hashMatches(String hashedPassword, String passwordToHash) {
    if (hashedPassword == null || passwordToHash == null) {
      throw new APIException("password.cannot.be.null", (Object[]) null);
    }

    return Safe.or(
        hashedPassword.equals(encodeString(passwordToHash)),
        hashedPassword.equals(encodeStringSHA1(passwordToHash)));
  }

  private static String getPasswordEncodeFailMessage(String algo) {
    return "Can't encode password because the given algorithm: " + algo + " was not found! (fail)";
  }

  public static String encodeString(String strToEncode) throws APIException {
    String algorithm = "SHA-512";
    MessageDigest md;
    byte[] input;
    try {
      md = MessageDigest.getInstance(algorithm);
      input = strToEncode.getBytes(StandardCharsets.UTF_8);
    } catch (NoSuchAlgorithmException e) {

      log.error(getPasswordEncodeFailMessage(algorithm), e);
      throw new APIException("system.cannot.find.password.encryption.algorithm", null, e);
    }

    return hexString(md.digest(input));
  }

  private static String encodeStringSHA1(String strToEncode) throws APIException {
    String algorithm = "SHA1";
    MessageDigest md;
    byte[] input;
    try {
      md = MessageDigest.getInstance(algorithm);
      input = strToEncode.getBytes(StandardCharsets.UTF_8);
    } catch (NoSuchAlgorithmException e) {

      log.error(getPasswordEncodeFailMessage(algorithm), e);
      throw new APIException("system.cannot.find.encryption.algorithm", null, e);
    }

    return hexString(md.digest(input));
  }

  private static String hexString(byte[] block) {
    StringBuilder buf = new StringBuilder();
    char[] hexChars = {
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
    };
    int high;
    int low;
    for (byte aBlock : block) {
      high = ((aBlock & 0xf0) >> 4);
      low = (aBlock & 0x0f);
      buf.append(hexChars[high]);
      buf.append(hexChars[low]);
    }

    return buf.toString();
  }

  private static String incorrectlyEncodeString(String strToEncode) throws APIException {
    String algorithm = "SHA1";
    MessageDigest md;
    byte[] input;
    try {
      md = MessageDigest.getInstance(algorithm);
      input = strToEncode.getBytes(StandardCharsets.UTF_8);
    } catch (NoSuchAlgorithmException e) {

      log.error(getPasswordEncodeFailMessage(algorithm), e);
      throw new APIException("system.cannot.find.encryption.algorithm", null, e);
    }

    return incorrectHexString(md.digest(input));
  }

  private static String incorrectHexString(byte[] b) {
    if (b == null || b.length < 1) {
      return "";
    }
    StringBuilder s = new StringBuilder();
    for (byte aB : b) {
      s.append(Integer.toHexString(aB & 0xFF));
    }
    return new String(s);
  }

  public static String getRandomToken() throws APIException {
    Random rng = new Random();
    return encodeString(Long.toString(System.currentTimeMillis()) + Long.toString(rng.nextLong()));
  }

  public static String encrypt(String text, byte[] initVector, byte[] secretKey) {
    IvParameterSpec initVectorSpec = new IvParameterSpec(initVector);
    SecretKeySpec secret = new SecretKeySpec(secretKey, OpenmrsConstants.ENCRYPTION_KEY_SPEC);
    byte[] encrypted;
    String result;

    try {
      Cipher cipher = Cipher.getInstance(OpenmrsConstants.ENCRYPTION_CIPHER_CONFIGURATION);
      cipher.init(Cipher.ENCRYPT_MODE, secret, initVectorSpec);
      encrypted = cipher.doFinal(text.getBytes(StandardCharsets.UTF_8));
      result = new String(Base64.getEncoder().encode(encrypted), StandardCharsets.UTF_8);
    } catch (GeneralSecurityException e) {
      throw new APIException("could.not.encrypt.text", null, e);
    }

    return result;
  }

  public static String encrypt(String text) {
    return Security.encrypt(text, Security.getSavedInitVector(), Security.getSavedSecretKey());
  }

  public static String decrypt(String text, byte[] initVector, byte[] secretKey) {
    IvParameterSpec initVectorSpec = new IvParameterSpec(initVector);
    SecretKeySpec secret = new SecretKeySpec(secretKey, OpenmrsConstants.ENCRYPTION_KEY_SPEC);
    String decrypted;

    try {
      Cipher cipher = Cipher.getInstance(OpenmrsConstants.ENCRYPTION_CIPHER_CONFIGURATION);
      cipher.init(Cipher.DECRYPT_MODE, secret, initVectorSpec);
      byte[] original = cipher.doFinal(Base64.getDecoder().decode(text));
      decrypted = new String(original, StandardCharsets.UTF_8);
    } catch (GeneralSecurityException e) {
      throw new APIException("could.not.decrypt.text", null, e);
    }

    return decrypted;
  }

  public static String decrypt(String text) {
    return Security.decrypt(text, Security.getSavedInitVector(), Security.getSavedSecretKey());
  }

  public static byte[] getSavedInitVector() {
    String initVectorText =
        Context.getRuntimeProperties()
            .getProperty(
                OpenmrsConstants.ENCRYPTION_VECTOR_RUNTIME_PROPERTY,
                OpenmrsConstants.ENCRYPTION_VECTOR_DEFAULT);

    if (StringUtils.hasText(initVectorText)) {
      return Base64.getDecoder().decode(initVectorText);
    }

    throw new APIException("no.encryption.initialization.vector.found", (Object[]) null);
  }

  public static byte[] generateNewInitVector() {

    byte[] initVector = new byte[16];
    new SecureRandom().nextBytes(initVector);

    return initVector;
  }

  public static byte[] getSavedSecretKey() {
    String keyText =
        Context.getRuntimeProperties()
            .getProperty(
                OpenmrsConstants.ENCRYPTION_KEY_RUNTIME_PROPERTY,
                OpenmrsConstants.ENCRYPTION_KEY_DEFAULT);

    if (StringUtils.hasText(keyText)) {
      return Base64.getDecoder().decode(keyText);
    }

    throw new APIException("no.encryption.secret.key.found", (Object[]) null);
  }

  public static byte[] generateNewSecretKey() {

    KeyGenerator kgen;
    try {
      kgen = KeyGenerator.getInstance(OpenmrsConstants.ENCRYPTION_KEY_SPEC);
    } catch (NoSuchAlgorithmException e) {
      throw new APIException("could.not.generate.cipher.key", null, e);
    }
    kgen.init(128);

    SecretKey skey = kgen.generateKey();

    return skey.getEncoded();
  }
}
