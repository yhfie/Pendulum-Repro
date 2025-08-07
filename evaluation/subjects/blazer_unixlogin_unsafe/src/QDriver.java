import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import edu.cmu.sv.kelinci.quantification.Greedy;
import edu.cmu.sv.kelinci.Mem;

public class QDriver extends AbstractQDriver {

	public static final int MAX_PASSWORD_LENGTH = 16; // bytes

	public QDriver() {
		super(5, 1.0, new Greedy(false));
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String username;
		String password;
		String[] username_secrets = new String[K];
		String[] password_secrets = new String[K];

		/* Read public value for username and password. */
		byte[] bytes = new byte[MAX_PASSWORD_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[bytes.length];
		for (int i = 0; i < bytes.length; i++) {
			char value = (char) bytes[i];
			tmp[i] = (char) ((value % 94) + 33);
		}
		username = new String(tmp);

		bytes = new byte[MAX_PASSWORD_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		tmp = new char[bytes.length];
		for (int i = 0; i < bytes.length; i++) {
			char value = (char) bytes[i];
			tmp[i] = (char) ((value % 94) + 33);
		}
		password = new String(tmp);

		/* Generate secrets. */
		for (int i = 0; i < K; i++) {

			bytes = new byte[MAX_PASSWORD_LENGTH];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[bytes.length];
			for (int j = 0; j < bytes.length; j++) {
				char value = (char) bytes[j];
				/* each char value must be between 0 and 127 and a printable character */
				char charValue = (char) ((value % 94) + 33);
				tmp[j] = charValue;
			}
			username_secrets[i] = new String(tmp);

			bytes = new byte[MAX_PASSWORD_LENGTH];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[bytes.length];
			for (int j = 0; j < bytes.length; j++) {
				char value = (char) bytes[j];
				/* each char value must be between 0 and 127 and a printable character */
				char charValue = (char) ((value % 94) + 33);
				tmp[j] = charValue;
			}
			password_secrets[i] = new String(tmp);
		}

		// System.out.println("public username = " + username);
		// System.out.println("public password = " + password);
		// for (int i = 0; i < K; i++) {
		// 	System.out.println("secret username " + i + " = " + username_secrets[i]);
		// 	System.out.println("secret password " + i + " = " + password_secrets[i]);
		// }
		String[][] secretValues = new String[K][2];
		for (int i = 0; i < K; i++) {
			secretValues[i][0] = username_secrets[i];
			secretValues[i][1] = password_secrets[i];
		}
		String[] publicValue = new String[] { username, password };
		return new Input(publicValue, secretValues);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		String[] publicStrs = (String[]) publicValue;
		String[] secretStrs = (String[]) secretValue;
		Timing.resetMap(secretStrs[0], secretStrs[1]);
		Mem.clear(false);
		Timing.login_unsafe(publicStrs[0], publicStrs[1]);
	}

	@Override
	public Object publicFromString(String publicValue) {
		/* Rhf: strings generated in `parseInput` are supposed to
		contain only non-whitespace chars */
		return publicValue.split(" ");
	}

	@Override
	public Object secretFromString(String secretValue) {
		return secretValue.split(" ");
	}

	@Override
	public String publicToString(Object publicValue) {
		String[] tmp = (String[]) publicValue;
		return tmp[0] + " " + tmp[1];
	}

	@Override
	public String secretToString(Object secretValue) {
		String[] tmp = (String[]) secretValue;
		return tmp[0] + " " + tmp[1];
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}