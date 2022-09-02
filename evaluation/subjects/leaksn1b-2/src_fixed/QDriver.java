import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;


public class QDriver extends AbstractQDriver {
	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		Integer public_guess;
		Integer[] secrets = new Integer[K];

		byte[] bytes = new byte[Integer.BYTES];

		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		public_guess = Math.floorMod(ByteBuffer.wrap(bytes).getInt(),(int) Math.pow(2,30));

		for (int i = 0; i < secrets.length; i++) {
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			secrets[i] = Math.floorMod(ByteBuffer.wrap(bytes).getInt(),(int) Math.pow(2,16));
		}

		return new Input(public_guess, secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		leaks_n1s.leaks_n1s((Integer) secretValue, (Integer) publicValue);
	}

	@Override
	public String publicToString(Object publicValue) {
		return String.valueOf((Integer) publicValue);
	}

	@Override
	public String secretToString(Object secretValue) {
		return String.valueOf((Integer) secretValue);
	}

	@Override
	public Object publicFromString(String publicValue) {
		return Integer.valueOf(publicValue);
	}

	@Override
	public Object secretFromString(String secretValue) {
		return Integer.valueOf(secretValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

