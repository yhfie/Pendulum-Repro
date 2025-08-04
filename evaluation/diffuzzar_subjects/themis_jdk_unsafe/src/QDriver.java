import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class QDriver extends AbstractQDriver {
	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		byte[][] secrets_digesta = null;
		byte[] public_digestb = null;

		/* Read all values. */
		List<Byte> values = new ArrayList<>();

		byte[] bytes = new byte[1];
		while ((fis.read(bytes) != -1)) {// && (i < maxM * n)
			values.add(bytes[0]);
		}

		if (values.size() < 3) {
			throw new RuntimeException("Too Less Data...");
		}

		int m = values.size() / (K + 1);

		// Read user public.
		public_digestb = new byte[m];
		for (int i = 0; i < m; i++) {
			public_digestb[i] = values.get(i);
		}

		secrets_digesta = new byte[K][m];
		for (int i = 0; i < K; i++) {
			for (int j = 0; i < m; i++) {
				secrets_digesta[i][j] = values.get(i + (K + 1) * m);
			}
		}

		return new Input(public_digestb, secrets_digesta);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		MessageDigest.isEqual_unsafe(
				(byte[]) secretValue, (byte[]) publicValue);
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

