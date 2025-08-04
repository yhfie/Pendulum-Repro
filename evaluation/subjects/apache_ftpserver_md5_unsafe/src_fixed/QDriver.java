import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import org.apache.ftpserver.usermanager.Md5PasswordEncryptor;
import org.apache.ftpserver.usermanager.PasswordEncryptor;

public class QDriver extends AbstractQDriver {
	public static final int PASSWORD_LENGTH = 16; // characters

	public static final boolean SAFE_MODE = false;

	PasswordEncryptor pe = new Md5PasswordEncryptor(SAFE_MODE);

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String public_guess;
		String[] secrets = new String[K];

		/* Read public value. */
		byte[] bytes = new byte[PASSWORD_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[bytes.length];
		for (int i=0; i<bytes.length; i++) {
			char value = (char) bytes[i];
			/* each char value must be between 0 and 127 and a printable character */
			char charValue = (char) ((value % 94) + 33);
			tmp[i] = charValue;
		}
		public_guess = new String(tmp);
		System.out.println(public_guess);

		/* Generate first secret. */
		secrets[0] = new String(pe.encrypt(public_guess));
		
		for (int i = 1; i < secrets.length; i++) {
			
			/* Read another secret. */
			bytes = new byte[secrets[0].length()];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[bytes.length];
			for (int j=0; j<bytes.length; j++) {
				char value = (char) bytes[j];
				/* each char value must be between 0 and 127 and a printable character */
				char charValue = (char) ((value % 94) + 33);
				tmp[j] = charValue;
			}
			secrets[i] = new String(tmp);
			
		}

		return new Input(public_guess, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		pe.matches((String) publicValue, (String) secretValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

