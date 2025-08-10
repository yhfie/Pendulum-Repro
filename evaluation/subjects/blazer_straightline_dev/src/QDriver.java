import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class QDriver extends AbstractQDriver {
	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		Integer public_a;
		Integer[] secret_taints = new Integer[K];

		List<Integer> values = new ArrayList<>();
		byte[] bytes = new byte[Integer.BYTES];
		while ((fis.read(bytes) != -1) && (values.size() < K+1)) {
			values.add(ByteBuffer.wrap(bytes).getInt());
		}
		if (values.size() < K + 1) {
			throw new RuntimeException("Too less data!");
		}

		/* Parse public value. */
		public_a = values.get(0);

		/* Parse secret values. */
		for (int i = 0; i < K; i++) {
			secret_taints[i] = values.get(i+1);
		}

		return new Input(public_a, secret_taints);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		Sanity.straightline_unsafe((Integer) publicValue, (Integer) secretValue);
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
