import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import modpow.SimplifiedRSA;

public class QDriver extends AbstractQDriver {
	public static int MODULO = 1717;
	public static int MAX_HIGH = Integer.MAX_VALUE;

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		Integer base_public;
		Integer[] exponent_secrets = new Integer[K];

		byte[] bytes = new byte[Integer.BYTES];
		if ((fis.read(bytes)) == -1) {
			throw new RuntimeException("Not enough data!");
		}
		base_public = Math.floorMod(ByteBuffer.wrap(bytes).getInt(), MODULO + 1);

		for (int i = 0; i < K; i++) {
			bytes = new byte[Integer.BYTES];
			if ((fis.read(bytes)) == -1) {
				throw new RuntimeException("Not enough data!");
			}
			exponent_secrets[i] = Math.floorMod(ByteBuffer.wrap(bytes).getInt(), MODULO + 1);
		}

		return new Input(base_public, exponent_secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		SimplifiedRSA.modPowFastKocherReduction(
				(int) publicValue, (int) secretValue,
				MODULO, MAX_HIGH);
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
