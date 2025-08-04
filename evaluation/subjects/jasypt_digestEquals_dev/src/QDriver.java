import sg.edu.nus.comp.tsunami.AbstractQDriver;

import org.jasypt.digest.StandardByteDigester;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import edu.cmu.sv.kelinci.Mem;

/* Rhf: subject comes from
https://github.com/jasypt/jasypt/commit/de86f6f6083dedbd493a68e5f888112c0469dac3#diff-ed511ae4cbd288c8473bb9a18ae7e582f792c86988aec4b4025116c500ec1264L1067 */

public class QDriver extends AbstractQDriver {
	static int MESSAGE_LENGTH = 16;

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		byte[] message = new byte[MESSAGE_LENGTH];
		if (fis.read(message) < 0) {
			throw new RuntimeException("Not enough input data...");
		}

		StandardByteDigester digester = new StandardByteDigester();
		digester.setSaltSizeBytes(0);

		byte[] digest = digester.digest(message);

		byte[][] secrets = new byte[K][];
		secrets[0] = digest;
		for (int i = 1; i < K; i++) {
			byte[] bytes = new byte[digest.length];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			secrets[i] = bytes;
		}

		return new Input(message, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		StandardByteDigester digester = new StandardByteDigester();
		digester.setSaltSizeBytes(0);
		Mem.clear(true);
		digester.matches_unsafe((byte[]) publicValue, (byte[]) secretValue);
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
	public String publicToString(Object secretValue) {
		return byteArrayToHexString((byte[]) secretValue);
	}

	@Override
	public Object publicFromString(String secretValue) {
		return hexStringToByteArray(secretValue);
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

