import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.openmrs.util.Security;

public class QDriver extends AbstractQDriver {
	public static final int MAX_PASSWORD_LENGTH = 16; // bytes

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String validPassword_public;
		String[] storedPassword_secret = new String[K];

		/* Read all data. */
		int i = 0;
		int value;
		List<Character> values = new ArrayList<>();
		while (((value = fis.read()) != -1) && (i < (K+1) * MAX_PASSWORD_LENGTH)) {
			/* each char value must be between 0 and 127 and a printable character */
			value = value % 127;
			char charValue = (char) value;
			if (Character.isAlphabetic(charValue) || Character.isDigit(charValue)) {
				values.add(charValue);
				i++;
			}
		}
		/* input must be non-empty */
		int eachSize = values.size() / (K + 1);
		if (eachSize % Character.BYTES == 1) {
			eachSize--;
		}
		if (eachSize < 1) {
			throw new RuntimeException("not enough data!");
		}
		System.out.println("eachSize=" + eachSize);

		char[] tmp_array = new char[eachSize];
		for (i = 0; i < eachSize; i++) {
			tmp_array[i] = values.get(i);
		}
		validPassword_public = new String(tmp_array);

		for (int j=0; j<K; j++) {
			tmp_array = new char[eachSize];
			for (i = 0; i < eachSize; i++) {
				tmp_array[i] = values.get(i + (j+1) * eachSize);
			}
			storedPassword_secret[j] = Security.encodeString(new String(tmp_array));
		}

		return new Input(validPassword_public, storedPassword_secret);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		Security.hashMatches((String) secretValue, (String) publicValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

