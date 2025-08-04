import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import sg.edu.nus.comp.tsunami.AbstractQDriver;

public class QDriver extends AbstractQDriver {
	public static final int MAX_PASSWORD_LENGTH = 16; // bytes

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String public_actual;
		String[] secrets_expected = new String[K];

		byte[] bytes = new byte[MAX_PASSWORD_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[bytes.length];
		for (int i = 0; i < bytes.length; i++) {
			tmp[i] = (char) (bytes[i] % 128);
		}
		public_actual = new String(tmp);

		/* Generate secrets. */
		for (int i = 0; i < K; i++) {

			bytes = new byte[MAX_PASSWORD_LENGTH];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[bytes.length];
			for (int j = 0; j < bytes.length; j++) {
				byte value = bytes[j];
				/* each char value must be between 0 and 127 and a printable character */
				char charValue = (char) (value % 128);
				tmp[j] = charValue;
			}
			secrets_expected[i] = new String(tmp);
		}

		return new Input(public_actual, secrets_expected);
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
	public Object secretFromString(String secretValue) {
		return new String(hexStringToByteArray(secretValue));
	}

	@Override
	public String secretToString(Object secretValue) {
		return byteArrayToHexString(((String)secretValue).getBytes());
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		PasswordEncoderUtils.equals_unsafe(
				(String) secretValue, (String) publicValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}
