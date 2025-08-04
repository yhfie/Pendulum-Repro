import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class QDriver extends AbstractQDriver {
    public static final int MAX_PASSWORD_LENGTH = 16; // bytes

	String username = "username"; // irrelevant

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		byte[] guess;
		byte[][] realpassword_secrets = new byte[K][];

		/* Read all data. */
		int value;
		int count = 0;
		List<Byte> values = new ArrayList<>();
		while (((value = fis.read()) != -1) && (count < (K+1) * MAX_PASSWORD_LENGTH)) {
			values.add((byte) (value % 127));
			count++;
		}
		
		/* input must be non-empty */
		if (values.size() < 3) {
			throw new RuntimeException("not enough data!");
		}

		int eachSize = values.size() / (K+1);

		guess = new byte[eachSize];
		for (int j = 0; j < eachSize; j++) {
			guess[j] = values.get(j);
		}
		
		for (int i=0; i<K; i++) {
			realpassword_secrets[i] = new byte[eachSize];
			for (int j = 0; j < eachSize; j++) {
				realpassword_secrets[i][j] = values.get(j + (i+1) * eachSize);
			}

		}

		return new Input(guess, realpassword_secrets);
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
		return hexStringToByteArray(publicValue);
	}

	@Override
	public Object secretFromString(String secretValue) {
		return hexStringToByteArray(secretValue);
	}

	@Override
	public String publicToString(Object publicValue) {
		return byteArrayToHexString((byte[]) publicValue);
	}

	@Override
	public String secretToString(Object secretValue) {
		return byteArrayToHexString((byte[]) secretValue);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		Login.login_unsafe((byte[]) secretValue, (byte[]) publicValue, username);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}
