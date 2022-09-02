import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;

public class QDriver extends AbstractQDriver {

	static class Secret {
		BigInteger bigInt;
		int bitlength;

		public Secret(BigInteger bigInt) {
			this.bigInt = bigInt;
			this.bitlength = (bigInt.equals(BigInteger.ZERO) ? 1 : bigInt.bitLength());
		}

		public String toString() {
			return bigInt.toString();
		}

		public static Secret valueOf(String s) {
			BigInteger bigInt = new BigInteger(s);
			return new Secret(bigInt);
		}
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		BigInteger public_base = null;
        BigInteger public_modulus = null;
        BigInteger[] secret_exponents = new BigInteger[K];
		
        byte[][] secret_bytes = new byte[K][];
        byte[] public_base_bytes = null;
        byte[] public_modulus_bytes = null;
        
        int maxNumVal = (K+2) * Integer.BYTES;
		
		/* Read all values. */
        byte[] bytes;

		// Determine size of byte array.
		try {
			int fileSize = Math.toIntExact(fis.getChannel().size());
			bytes = new byte[Math.min(fileSize, maxNumVal)];
		} catch (ArithmeticException e) {
			bytes = new byte[maxNumVal];
		}

		if (bytes.length < (K+2)) {
			throw new RuntimeException("too less data");
		} else {
			fis.read(bytes);
		}

        int m = bytes.length / (K+2);

        public_base_bytes = Arrays.copyOfRange(bytes, 0, m);
        public_modulus_bytes = Arrays.copyOfRange(bytes, m, 2 * m);
        for (int i=0; i<K; i++) {
        	secret_bytes[i] = Arrays.copyOfRange(bytes, (i+2) * m, (i+2+1) * m); 
        }
        
        /* Use only positive values, first value determines the signum. */
        if (public_base_bytes[0] < 0) {
            public_base_bytes[0] = (byte) (public_base_bytes[0] * (-1) - 1);
        }
        if (public_modulus_bytes[0] < 0) {
            public_modulus_bytes[0] = (byte) (public_modulus_bytes[0] * (-1) - 1);
        }
        for (int i=0; i<K; i++) {
            if (secret_bytes[i][0] < 0) {
            	secret_bytes[i][0] = (byte) (secret_bytes[i][0] * (-1) - 1);
            }
        }
        
        /* We do not care about the bit length of the public values. */
        public_base = new BigInteger(public_base_bytes);
        public_modulus = new BigInteger(public_modulus_bytes);
        // Ensure that modulus is not zero.
        if (public_modulus.equals(BigInteger.ZERO)) {
            public_modulus = BigInteger.ONE;
        }
        
        /* Ensure secrets have same bit length */
        int smallestBitLength = Integer.MAX_VALUE;
        for (int i=0; i<K; i++) {
        	secret_exponents[i] = new BigInteger(secret_bytes[i]);
        	
        	/* Determine smallest bitlength. */
        	int bitLength = (secret_exponents[i].equals(BigInteger.ZERO) ? 1 : secret_exponents[i].bitLength());
        	if (bitLength < smallestBitLength) {
        		smallestBitLength = bitLength;
        	}
        }
        for (int i=0; i<K; i++) {
        	int bitLength = (secret_exponents[i].equals(BigInteger.ZERO) ? 1 : secret_exponents[i].bitLength());
        	
            if (bitLength != smallestBitLength) {
                /*
                 * Trim bigger number to smaller bit length and ensure there is the 1 in the beginning of the bit
                 * representation, otherwise the zero would be trimmed again by the BigInteger constructor and hence it
                 * would have a smaller bit length.
                 */
                String bitStr = secret_exponents[i].toString(2);
                bitStr = "1" + bitStr.substring(bitLength - smallestBitLength + 1);
                secret_exponents[i] = new BigInteger(bitStr, 2);
            }
        }
        
        // System.out.println("public_base=" + public_base);
        // System.out.println("public_base.bitlength=" + public_base.bitLength());
        // System.out.println("public_modulus=" + public_modulus);
        // System.out.println("public_modulus.bitlength=" + public_modulus.bitLength());
        
        // for (int i=0; i<K; i++) {
        //     System.out.println("secret" + i + "_exponent=" + secret_exponents[i]);
        //     System.out.println("secret" + i + "_exponent.bitlength=" + secret_exponents[i].bitLength());
        //     System.out.println("secret" + i + "_exponent=" + secret_exponents[i].toString(2));
        // }
		Secret[] secretValues = new Secret[K];
		for (int i = 0; i < K; i++) {
			secretValues[i] = new Secret(secret_exponents[i]);
		}
		BigInteger[] publicValue = new BigInteger[2];
		publicValue[0] = public_base;
		publicValue[1] = public_modulus;
		return new Input(publicValue, secretValues);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		BigInteger[] pub = (BigInteger[]) publicValue;
		BigInteger public_base = pub[0];
		BigInteger public_modulus = pub[1];
		Secret secret = (Secret) secretValue;
		K96.modular_exponentiation_unsafe(public_base, secret.bigInt, public_modulus, secret.bitlength);
	}

	@Override
	public Object publicFromString(String publicValue) {
		String[] tmp = publicValue.split(",");
		BigInteger[] result = new BigInteger[2];
		result[0] = new BigInteger(tmp[0]);
		result[1] = new BigInteger(tmp[1]);
		return result;
	}

	@Override
	public Object secretFromString(String secretValue) {
		return Secret.valueOf(secretValue);
	}

	@Override
	public String publicToString(Object publicValue) {
		BigInteger[] tmp = (BigInteger[]) publicValue;
		return tmp[0] + "," + tmp[1];
	}

	@Override
	public String secretToString(Object secretValue) {
		return secretValue.toString();
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

