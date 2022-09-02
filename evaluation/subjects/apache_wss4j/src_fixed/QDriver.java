import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.wss4j.binding.wss10.PasswordString;

import pendulum.AbstractQDriver;

public class QDriver extends AbstractQDriver {

	public static final int MAX_PASSWORD_LENGTH = 16; // bytes

	@Override
	public Input parseInput(FileInputStream fileInputStream) throws Exception {

		PasswordString publicValue = new PasswordString();
		String[] secretValues = new String[K];

		/* Read all data. */
		int i = 0;
		int value;
		List<Character> values = new ArrayList<>();
		while (((value = fileInputStream.read()) != -1) && (i < (K + 1) * MAX_PASSWORD_LENGTH)) {
			/*
			 * each char value must be between 0 and 127 and a printable character
			 */
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

		char[] tmp_array = new char[eachSize];
		for (i = 0; i < eachSize; i++) {
			tmp_array[i] = values.get(i);
		}
		publicValue.setValue(new String(tmp_array));

		for (int j = 0; j < K; j++) {
			tmp_array = new char[eachSize];
			for (i = 0; i < eachSize; i++) {
				tmp_array[i] = values.get(i + (j + 1) * eachSize);
			}
			// storedPassword_secret[j] = new String(tmp_array);
			secretValues[j] = new String(tmp_array);
		}

		return new Input(publicValue, secretValues);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		SimplifiedUsernameTokenValidatorImpl.verifyPlaintextPassword((PasswordString) publicValue,
				(String) secretValue);
	}

	@Override
	public String publicToString(Object publicValue) {
		return ((PasswordString) publicValue).getValue();
	}

	@Override
	public Object publicFromString(String publicValue) {
		PasswordString passwordStringObject = new PasswordString();
		passwordStringObject.setValue(publicValue);
		return passwordStringObject;
	}

}
