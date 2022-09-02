import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import com.acciente.oacc.PasswordCredentials;

public class QDriver extends AbstractQDriver {

	public static final int MAX_PASSWORD_LENGTH = 16; // characters

	static char[] validCharacters = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
			'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a',
			'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			'w', 'x', 'y', 'z', '{', '}', '(', ')', '[', ']', '#', ':', ';', '^', '!', '|', '&', '_', '~', '@', '$',
			'%', '/' };

	public static char[] mapToLetterOrDigest(byte[] bytes) {
		char[] newCharValues = new char[bytes.length];
		for (int i = 0; i < newCharValues.length; i++) {
			newCharValues[i] = validCharacters[Math.floorMod(bytes[i], validCharacters.length)];
		}
		return newCharValues;
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		PasswordCredentials public_credentials;
		PasswordCredentials[] secrets = new PasswordCredentials[K];

		// Read all inputs.
		int minNumBytesToRead = (K + 1) * 1;
		int maxNumBytesToRead = (K + 1) * MAX_PASSWORD_LENGTH;

		int totalNumberOfBytesInFile = Math.toIntExact(fis.getChannel().size());

		if (totalNumberOfBytesInFile < minNumBytesToRead) {
			throw new RuntimeException("not enough data!");
		}

		int usedNumberOfBytes = Math.min(totalNumberOfBytesInFile, maxNumBytesToRead);
		byte[] allBytes = new byte[usedNumberOfBytes];
		fis.read(allBytes);

		int eachPasswordLength = usedNumberOfBytes / (K + 1);

		/* Read public. */
		int index = 0;
		byte[] temp = Arrays.copyOfRange(allBytes, index, index + eachPasswordLength);
		public_credentials = PasswordCredentials.newInstance(mapToLetterOrDigest(temp));

		/* Read secrets. */
		for (int i = 0; i < K; i++) {
			index += eachPasswordLength;
			temp = Arrays.copyOfRange(allBytes, index, index + eachPasswordLength);
			secrets[i] = PasswordCredentials.newInstance(mapToLetterOrDigest(temp));
		}

		// System.out.println("public (password): " + Arrays.toString(public_credentials.getPassword()));
		// for (int i = 0; i < K; i++) {
		// 	System.out.println("secret[" + i + "]: " + Arrays.toString(secrets[i].getPassword()));
		// }

		return new Input(public_credentials, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		PasswordCredentials public_credentials = (PasswordCredentials) publicValue;
		public_credentials.equals((PasswordCredentials) secretValue);
	}

	@Override
	public Object publicFromString(String publicValue) {
		return PasswordCredentials.newInstance(publicValue.toCharArray());
	}

	@Override
	public Object secretFromString(String secretValue) {
		return PasswordCredentials.newInstance(secretValue.toCharArray());
	}

	@Override
	public String publicToString(Object publicValue) {
		PasswordCredentials pc = (PasswordCredentials) publicValue;
		return new String(pc.getPassword());
	}

	@Override
	public String secretToString(Object secretValue) {
		PasswordCredentials pc = (PasswordCredentials) secretValue;
		return new String(pc.getPassword());
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

