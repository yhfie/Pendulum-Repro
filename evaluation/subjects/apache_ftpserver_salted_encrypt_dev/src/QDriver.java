import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import org.apache.ftpserver.usermanager.SaltedPasswordEncryptor;

public class QDriver extends AbstractQDriver {
	public static final int MAX_PASSWORD_LENGTH = 16; // characters

	public static final boolean SAFE_MODE = false;

	/* retrieved from application */
	private static final int SALT_LENGTH = 1; /* Integer number */
	private static final int MAXIMUM_SALT_VALUE = 99999999;

	SaltedPasswordEncryptor pe = new SaltedPasswordEncryptor(SAFE_MODE);

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String public_guess;
		String[] secrets = new String[K];

		int minNumBytesToRead = 1 + K * SALT_LENGTH * Integer.BYTES;
		int maxNumBytesToRead = MAX_PASSWORD_LENGTH + K * SALT_LENGTH * Integer.BYTES;
		System.out.println("minNumBytesToRead: " + minNumBytesToRead);
		System.out.println("maxNumBytesToRead: " + maxNumBytesToRead);

		int totalNumberOfBytesInFile = Math.toIntExact(fis.getChannel().size());

		if (totalNumberOfBytesInFile < minNumBytesToRead) {
			throw new RuntimeException("not enough data!");
		}

		int usedNumberOfBytes = Math.min(totalNumberOfBytesInFile, maxNumBytesToRead);
		byte[] allBytes = new byte[usedNumberOfBytes];
		fis.read(allBytes);

		/* Read public. */
		int passwordByteLength = usedNumberOfBytes - (K * SALT_LENGTH * Integer.BYTES);
		int index = 0;
		byte[] temp = Arrays.copyOfRange(allBytes, index, index + passwordByteLength);
		index += passwordByteLength;
		public_guess = new String(temp);

		/* Read secrets. */
		for (int i = 0; i < secrets.length; i++) {

			/* Read salt. */
			temp = Arrays.copyOfRange(allBytes, index, index + SALT_LENGTH * Integer.BYTES);
			index += SALT_LENGTH * Integer.BYTES;
			int salt = Math.abs(ByteBuffer.wrap(temp).getInt() % (MAXIMUM_SALT_VALUE));
			secrets[i] = Integer.toString(salt);

		}

		return new Input(public_guess, secrets);
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
	public Object publicFromString(String publicValue) {
		return new String(hexStringToByteArray(publicValue));
	}

	@Override
	public String publicToString(Object publicValue) {
		return byteArrayToHexString(((String)publicValue).getBytes());
	}
	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		pe.encrypt((String) publicValue, (String) secretValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}
