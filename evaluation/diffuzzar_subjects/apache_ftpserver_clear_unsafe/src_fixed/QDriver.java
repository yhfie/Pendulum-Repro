import java.io.FileInputStream;

import org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
import org.apache.ftpserver.usermanager.PasswordEncryptor;

import pendulum.AbstractQDriver;

public class QDriver extends AbstractQDriver {

	public static final int PASSWORD_LENGTH = 16; // bytes

	private char[] alphaNumerics =
			"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
			.toCharArray();

	@Override
	public Input parseInput(FileInputStream fileInputStream) throws Exception {

		String publicValue;
		String[] secretValues = new String[K];

		/* Read public value. */
		byte[] bytes = new byte[PASSWORD_LENGTH];
		if (fileInputStream.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[bytes.length];

		for (int i = 0; i < bytes.length; i++) {
			int idx = ((char) bytes[i]) % alphaNumerics.length;
			/* each char value must be between 0 and 127 and a printable character */
			tmp[i] = alphaNumerics[idx];
		}
		publicValue = new String(tmp);

		/* Generate first secret. */
		PasswordEncryptor pe = new ClearTextPasswordEncryptor(false);
		secretValues[0] = new String(pe.encrypt(publicValue));

		for (int i = 1; i < secretValues.length; i++) {

			/* Read another secret. */
			bytes = new byte[secretValues[0].length()];
			if (fileInputStream.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[bytes.length];
			for (int j = 0; j < bytes.length; j++) {
				int idx = ((char) bytes[j]) % alphaNumerics.length;
				/* each char value must be between 0 and 127 and a printable character */
				tmp[j] = alphaNumerics[idx];
			}
			secretValues[i] = new String(tmp);
		}

		return new Input(publicValue, secretValues);
	}

	@Override
	public void runOne(Object publicObj, Object secretObj) throws Exception {
		PasswordEncryptor pe = new ClearTextPasswordEncryptor(false);
		pe.matches((String) publicObj, (String) secretObj);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}
