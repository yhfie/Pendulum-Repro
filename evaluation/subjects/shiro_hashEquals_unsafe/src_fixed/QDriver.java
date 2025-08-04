import sg.edu.nus.comp.tsunami.AbstractQDriver;

import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.apache.shiro.crypto.hash.Hash;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import edu.cmu.sv.kelinci.Mem;

/* Rhf: subject comes from
https://github.com/apache/shiro/commit/d7214d8b9cee3e0386ddbcd7f2afeb8112057af2 */

public class QDriver extends AbstractQDriver {
	static int PLAIN_LENGTH = 16;

	static DefaultPasswordService service = new DefaultPasswordService();

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		byte[] plaintext = new byte[PLAIN_LENGTH];
		if (fis.read(plaintext) < 0) {
			throw new RuntimeException("Not enough input data...");
		}

		byte[][] secrets = new byte[K][];
		secrets[0] = plaintext;
		for (int i = 1; i < K; i++) {
			byte[] bytes = new byte[PLAIN_LENGTH];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			secrets[i] = bytes;
		}

		return new Input(plaintext, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		Hash savedHash = service.hashPassword((byte[]) secretValue);
		Mem.clear(true);
		service.passwordsMatch_unsafe((byte[]) publicValue, savedHash);
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
