import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class QDriver extends AbstractQDriver {
	public static final int PASSWORD_LENGTH = 128; // characters

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		byte[] public_guess;
		byte[][] secrets = new byte[K][PASSWORD_LENGTH];

		// Read all inputs.
		List<Byte> public_value_list = new ArrayList<>();
		for (int i = 0; i < secrets.length; i++) {

			/* Read another secret. */
			secrets[i] = new byte[PASSWORD_LENGTH];
			if (fis.read(secrets[i]) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			
		}
		
		// Then read the remaining bytes for the public image.
		byte[] bytes = new byte[1];
		while ((fis.read(bytes) != -1)) {
			public_value_list.add(bytes[0]);
		}
		if (public_value_list.size() < 1) {
			throw new RuntimeException("Not enough input data...");
		}
		public_guess = new byte[public_value_list.size()];
		for (int i = 0; i < public_guess.length; i++) {
			public_guess[i] = public_value_list.get(i);
		}

		return new Input(public_guess, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		ImageMatcherWorker.test((byte[]) publicValue, (byte[]) secretValue);
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

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

