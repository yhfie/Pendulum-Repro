import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import edu.cmu.sv.kelinci.quantification.Greedy;

public class QDriver extends AbstractQDriver {

	public QDriver() {
		super(10, 1.0, new Greedy(false));
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
        int numberOfVariables = K + 1; // how many variables
        int max_password_length = 16; // bytes
        
        // Read all inputs.
        List<Byte> values = new ArrayList<>();

		byte[] bytes = new byte[1];

		int t = 0;
		while ((fis.read(bytes) != -1) && (t < max_password_length * numberOfVariables)) {
			values.add(bytes[0]);
			t++;
		}

        // List<byte[]> secrets = new ArrayList<>();
        byte[] public_guess;

        if (values.size() < numberOfVariables) {
            throw new RuntimeException("Not enough input data...");
        }

        int passwordLength = values.size() / numberOfVariables;
        System.out.println("length=" + passwordLength);
        
        
        // Read public.
        public_guess = new byte[passwordLength];
        for (int i = 0; i < passwordLength; i++) {
        	public_guess[i] = values.get(i);
        }
        
        System.out.println("public_guess=" + Arrays.toString(public_guess));
        
		byte[][] secretValues = new byte[K][passwordLength];
        // Read secrets.
        for (int i=0; i<K; i++) {
            byte[] secret_pw = new byte[passwordLength];
            for (int j = 0; j < passwordLength; j++) {
            	secret_pw[j] = values.get(j + i * passwordLength);
            }
            // secrets.add(secret_pw);
			secretValues[i] = secret_pw;
            System.out.println("secret" + i + "=" + Arrays.toString(secret_pw));
        }

		return new Input(public_guess, secretValues);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		PWCheck.pwcheck1_unsafe((byte[]) publicValue, (byte[]) secretValue);
	}

	@Override
	public Object publicFromString(String publicValue) {
		return hexStringToByteArray(publicValue);
	}

	@Override
	public Object secretFromString(String secretValue) {
		return hexStringToByteArray(secretValue);
	}

	@Override
	public String publicToString(Object publicValue) {
		return byteArrayToHexString((byte[]) publicValue);
	}

	@Override
	public String secretToString(Object secretValue) {
		return byteArrayToHexString((byte[]) secretValue);
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

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

