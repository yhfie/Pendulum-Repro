import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import edu.cmu.sv.kelinci.Kelinci;
import edu.cmu.sv.kelinci.Mem;
import edu.cmu.sv.kelinci.quantification.PartitionAlgorithm;
import edu.cmu.sv.kelinci.quantification.PartitionSet;
import edu.cmu.sv.kelinci.quantification.Greedy;
import modpow.SimplifiedRSA;

public class Driver_Greedy {

	/* Maximum number of different observations. */
	public final static int K = 100;

	/* Minimum distance between clusters. */
	public final static double epsilon = 1.0;

	/* Cluster Algorithm */
	public static PartitionAlgorithm clusterAlgorithm = new Greedy(false);

	////////////////////////////////////////////////////////////////////////

	public static int MODULO = 1964903306;
	public static int MAX_HIGH = Integer.MAX_VALUE;

	public static void main(String[] args) {

		if (args.length != 1) {
			System.out.println("Expects file name as parameter");
			return;
		}

		/* Read input. */
		int modulus_fixed = MODULO;
		int base_public;
		int[] exponent_secrets = new int[K];

		try (FileInputStream fis = new FileInputStream(args[0])) {

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

		} catch (IOException e) {
			System.err.println("Error reading input");
			e.printStackTrace();
			return;
		}

		System.out.println("modulus_fixed=" + modulus_fixed);
		System.out.println("base_public=" + base_public);
		for (int i = 0; i < K; i++) {
			System.out.println("exponent_" + i + "=" + exponent_secrets[i]);
		}

		long[] observations = new long[K];
		Mem.clear(true);
		for (int i = 0; i < K; i++) {
			Mem.clear(false);
			SimplifiedRSA.modPowFastKocherReduction(base_public, exponent_secrets[i], modulus_fixed, MAX_HIGH);
			observations[i] = Mem.instrCost;
		}
		System.out.println("observations: " + Arrays.toString(observations));

		PartitionSet clusters = PartitionSet.createFromObservations(epsilon, observations, clusterAlgorithm);
		Kelinci.setObserverdClusters(clusters.getClusterAverageValues(), clusters.getMinimumDeltaValue());

		System.out.println("Done.");
	}

}
