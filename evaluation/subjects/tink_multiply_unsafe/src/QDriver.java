import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;


public class QDriver extends AbstractQDriver {
	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String publicValue = "DUMMY";

		byte[][] secrets = new byte[K][];
		for (int i = 0; i < K; i++) {
			byte[] bytes = new byte[AesEaxJce.BLOCK_SIZE_IN_BYTES];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			secrets[i] = bytes;
		}

		return new Input(publicValue, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		AesEaxJce.multiplyByX_exp_unsafe((byte[]) secretValue, 5);
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

