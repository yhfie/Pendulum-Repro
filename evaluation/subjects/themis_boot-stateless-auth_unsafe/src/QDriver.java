import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import javax.xml.bind.DatatypeConverter;

public class QDriver extends AbstractQDriver {

	public static final int MAX_USERNAME_LENGTH = 5; // bytes

	static byte[] secretKey = { 15, 23, -12, 17, 3 }; // YN just random, but fixed for all experiments

	TokenHandler th = new TokenHandler(secretKey, false);

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String userBytesStringPublic;
		int[] invalidCharacterIndex = new int[K-1];

		// Read all inputs.

		/* Read public value for public_actual */
		byte[] bytes = new byte[MAX_USERNAME_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[bytes.length];
		for (int i = 0; i < bytes.length; i++) {
			tmp[i] = (char) (bytes[i] % 128);
		}
		userBytesStringPublic = new String(tmp);

		/* Generate secrets. */
		for (int i = 0; i < K - 1; i++) {
			invalidCharacterIndex[i] = fis.read();
		}

		System.out.println("userBytesStringPublic = " + userBytesStringPublic);
		// for (int i = 0; i < K - 1; i++) {
			// System.out.println("invalidCharacterIndex " + i + " = " + invalidCharacterIndex[i]);
		// }

		// byte[] secretKey = { 15, 23, -12, 17, 3 }; // YN just random, but fixed for all experiments
		// TokenHandler th = new TokenHandler(secretKey, false);

		byte[] validHash = th.hmac.doFinal(DatatypeConverter.parseBase64Binary(userBytesStringPublic));
		String hashByteStringValid = DatatypeConverter.printBase64Binary(validHash);
		String userTokenValid = userBytesStringPublic + TokenHandler.SEPARATOR + hashByteStringValid;

		String[] userTokenInvalid = new String[K - 1];
		for (int i = 0; i < K - 1; i++) {
			
			/* Generate a hash with same size but the wrong content. */
	        invalidCharacterIndex[i] = invalidCharacterIndex[i] % validHash.length;
	        byte[] invalidHash = new byte[validHash.length];
	        for (int j = 0; j < invalidHash.length; j++) {
	            if (j == invalidCharacterIndex[i]) {
	                invalidHash[j] = (byte) ((validHash[j] == 42) ? 21 : 42);
	            } else {
	                invalidHash[j] = validHash[j];
	            }
	        }
	        String hashByteStringInvalid = DatatypeConverter.printBase64Binary(invalidHash);
	        userTokenInvalid[i] = userBytesStringPublic + TokenHandler.SEPARATOR + hashByteStringInvalid;
	        
		}

		String[] secretValues = new String[K];
		secretValues[0] = userTokenValid;
		for (int i = 1; i < K; i++) {
			secretValues[i] = userTokenInvalid[i - 1];
		}
		return new Input("DUMMY", secretValues);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		th.parseUserFromToken((String) secretValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
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
	public Object secretFromString(String secretValue) {
		return new String(hexStringToByteArray(secretValue));
	}

	@Override
	public String secretToString(Object secretValue) {
		return byteArrayToHexString(((String) secretValue).getBytes());
	}

}
