import pendulum.AbstractQDriver;

import org.cryptomator.crypto.aes256.Aes256Cryptor;
import org.cryptomator.crypto.Cryptor;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import java.nio.file.Files;
import java.io.ByteArrayInputStream;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.channels.SeekableByteChannel;
import static java.nio.file.StandardOpenOption.*;
import java.util.EnumSet;
import java.nio.ByteBuffer;
import java.util.Random;
import java.io.InputStream;
import java.util.Set;
import java.util.HashSet;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.nio.file.attribute.FileAttribute;


import edu.cmu.sv.kelinci.Mem;

/* Rhf: subject comes from
https://github.com/cryptomator/cryptomator/commit/8bfdad38b9a87b1c5dd9089205ad3fa4de2a2425 */

public class QDriver extends AbstractQDriver {

	static int MESSAGE_LENGTH = 16;
	static int HMAC_SHA256_LENGTH = 32;
	static long RANDOM_SEED = 42;

	static EnumSet byteChannelOptions = EnumSet.of(READ, WRITE, TRUNCATE_EXISTING, CREATE, DELETE_ON_CLOSE);

	static String TMP_FILE = "/tmp/cryptomator_tmp";

	static FileAttribute fileAttr;
	static {
		Set<PosixFilePermission> filePerms = new HashSet<>();
		filePerms.add(PosixFilePermission.OWNER_READ);
		filePerms.add(PosixFilePermission.OWNER_WRITE);

		fileAttr = PosixFilePermissions.asFileAttribute(filePerms);
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		byte[] message = new byte[MESSAGE_LENGTH];
		if (fis.read(message) < 0) {
			throw new RuntimeException("Not enough input data...");
		}

		Random random = new Random(RANDOM_SEED);
		Aes256Cryptor cryptor = new Aes256Cryptor(random);

		InputStream stream = new ByteArrayInputStream(message);
		Path path = Paths.get(TMP_FILE);
		SeekableByteChannel encryptedFile =
				Files.newByteChannel(path, byteChannelOptions, fileAttr);
		cryptor.encryptFile(stream, encryptedFile);	

		int size = (int) encryptedFile.size();
		ByteBuffer buffer = ByteBuffer.allocate(size);
		encryptedFile.position(0);
		encryptedFile.read(buffer);

		byte[][] secrets = new byte[K][];
		secrets[0] = new byte[size];
		System.arraycopy(buffer.array(), 0, secrets[0], 0, size);
		for (int i = 1; i < K; i++) {
			byte[] bytes = new byte[size];
			System.arraycopy(secrets[0], 0, bytes, 0, size);

			byte[] hmac = new byte[HMAC_SHA256_LENGTH];
			if (fis.read(hmac) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			// 16 is where hmac resides in the encrypted file
			System.arraycopy(hmac, 0, bytes, 16, HMAC_SHA256_LENGTH);  

			secrets[i] = bytes;
		}

		return new Input("DUMMY", secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		Path path = Paths.get(TMP_FILE);
		SeekableByteChannel encryptedFile =
				Files.newByteChannel(path, byteChannelOptions, fileAttr);
		byte[] bytes = (byte[]) secretValue;
		ByteBuffer buffer = ByteBuffer.wrap(bytes);
		encryptedFile.write(buffer);

		Random random = new Random(RANDOM_SEED);
		Aes256Cryptor cryptor = new Aes256Cryptor(random);

		Mem.clear(true);
		cryptor.authenticateContent_unsafe(encryptedFile);
	}

	private static byte[] hexStringToByteArray(String s) {
		int len = s.length();
		byte[] data = new byte[len / 2];
		for (int i = 0; i < len; i += 2) {
			data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
								+ Character.digit(s.charAt(i+1), 16));
		}
		return data;
	}

	private static String byteArrayToHexString(byte[] bytes) {
		StringBuilder builder = new StringBuilder();
		for (byte b: bytes) {
			builder.append(String.format("%02x", b));
		}
		return builder.toString();
	}

	@Override
	public String secretToString(Object secretValue) {
		return byteArrayToHexString((byte[]) secretValue);
	}

	@Override
	public Object secretFromString(String secretValue) {
		return hexStringToByteArray(secretValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

