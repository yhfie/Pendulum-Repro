import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import pendulum.AbstractQDriver;

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
			char tmpChar = (char) bytes[i];
			tmp[i] = (char) ((tmpChar % 94) + 33);
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
				char value = (char) bytes[j];
				/* each char value must be between 0 and 127 and a printable character */
				char charValue = (char) ((value % 94) + 33);
				tmp[j] = charValue;
			}
			secrets_expected[i] = new String(tmp);
		}

		return new Input(public_actual, secrets_expected);
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
