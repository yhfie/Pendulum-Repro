import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import fr.xephi.authme.security.crypts.EncryptionMethod;
import fr.xephi.authme.security.crypts.HashedPassword;
import fr.xephi.authme.security.crypts.RoyalAuth;

public class QDriver extends AbstractQDriver {

	public static final int MAX_PASSWORD_LENGTH = 16; // characters

	public static final boolean SAFE_MODE = false;

	private static final EncryptionMethod encrMethod = new RoyalAuth(SAFE_MODE);

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		/* Read input. */
		String username_public;
		String password_public;
		HashedPassword[] secrets = new HashedPassword[K];

		/* Read public value. */
		int length = fis.read();
		if (length < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		length = length % MAX_PASSWORD_LENGTH + 1;

		byte[] bytes = new byte[length];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[length];
		for (int i = 0; i < tmp.length; i++) {
			char value = (char) bytes[i];
			char charValue = (char) ((value % 94) + 33);
			tmp[i] = charValue;
		}
		username_public = new String(tmp);

		bytes = new byte[length];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		tmp = new char[length];
		for (int i = 0; i < tmp.length; i++) {
			char value = (char) bytes[i];
			char charValue = (char) ((value % 94) + 33);
			tmp[i] = charValue;
		}
		password_public = new String(tmp);

		/* Generate first secret. */
		secrets[0] = encrMethod.computeHash(password_public, username_public);

		for (int i = 1; i < secrets.length; i++) {

			/* Read another secret. */
			length = fis.read();
			if (length < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			length = length % MAX_PASSWORD_LENGTH + 1;

			bytes = new byte[length];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[length];
			for (int j = 0; j < tmp.length; j++) {
				char value = (char) bytes[j];
				char charValue = (char) ((value % 94) + 33);
				tmp[j] = charValue;
			}
			secrets[i] = encrMethod.computeHash(new String(tmp), username_public);
		}

		/* username_public is never used in `comparePassword` */
		return new Input(password_public, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		encrMethod.comparePassword((String) publicValue, (HashedPassword) secretValue, "DUMMY");
	}

	@Override
	public String secretToString(Object secretValue) {
		return ((HashedPassword) secretValue).getHash();
	}

	@Override
	public Object secretFromString(String secretValue) {
		return new HashedPassword(secretValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

