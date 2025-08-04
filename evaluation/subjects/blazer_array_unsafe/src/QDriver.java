import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class QDriver extends AbstractQDriver {

	public static final int MAX_LENGTH = 64;

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		int[] public_a;
		Integer[] secret_taints = new Integer[K];

		int maxNumberOfIntegers = K + MAX_LENGTH;

		List<Integer> values = new ArrayList<>();

		/* Read all values. */
		byte[] bytes = new byte[Integer.BYTES];
		while ((fis.read(bytes) != -1) && (values.size() < maxNumberOfIntegers)) {
			values.add(ByteBuffer.wrap(bytes).getInt());
		}

		if (values.size() < K + 1) {
			throw new RuntimeException("Too less data!");
		}

		/* Parse public value. */
		int publicSize = values.size() - K;
		public_a = new int[publicSize];
		for (int i = 0; i < publicSize; i++) {
			public_a[i] = values.get(i);
		}

		/* Parse secret values. */
		for (int i = 0; i < K; i++) {
			secret_taints[i] = values.get(i + publicSize);
		}

		// System.out.println("public=" + Arrays.toString(public_a));
		// for (int i = 0; i < secret_taints.length; i++) {
		// 	System.out.println("secret" + i + "=" + secret_taints[i]);
		// }

		return new Input(public_a, secret_taints);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		MoreSanity.array_unsafe((int[]) publicValue, (int) secretValue);
	}

	@Override
	public Object publicFromString(String publicValue) {
		String[] tmp = publicValue.split(",");
		int[] result = new int[tmp.length];
		int n = tmp.length;
		for (int i = 0; i < n; i++) {
			result[i] = Integer.valueOf(tmp[i]);
		}
		return result;
	}

	@Override
	public Object secretFromString(String secretValue) {
		return Integer.valueOf(secretValue);
	}

	@Override
	public String publicToString(Object publicValue) {
		int[] numbers = (int[]) publicValue;
		int n = numbers.length;
		StringBuilder builder = new StringBuilder();
		if (n > 0) {
			builder.append(numbers[0]);
		}
		for (int i = 1; i < n; i++) {
			builder.append(',').append(numbers[i]);
		}
		return builder.toString();
	}

	@Override
	public String secretToString(Object secretValue) {
		return String.valueOf((Integer) secretValue);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

