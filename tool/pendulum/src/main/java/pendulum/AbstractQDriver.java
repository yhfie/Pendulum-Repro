package pendulum;

import java.io.FileInputStream;

import edu.cmu.sv.kelinci.Kelinci;
import edu.cmu.sv.kelinci.Mem;
import edu.cmu.sv.kelinci.quantification.Greedy;
import edu.cmu.sv.kelinci.quantification.PartitionAlgorithm;
import edu.cmu.sv.kelinci.quantification.PartitionSet;

public abstract class AbstractQDriver {
	public final int K;
	public final double epsilon;
	public final PartitionAlgorithm clusterAlgorithm;

	protected long[] observations;
	protected Object publicValue;
	protected Object[] secretValues;

	public AbstractQDriver() {
		K = 100;
		epsilon = 1.0;
		clusterAlgorithm = new Greedy(false);
	}

	public AbstractQDriver(PartitionAlgorithm clusterAlgorithm) {
		this.K = 100;
		this.epsilon = 1.0;
		this.clusterAlgorithm = clusterAlgorithm;
	}

	public AbstractQDriver(int K, double epsilon, PartitionAlgorithm clusterAlgorithm) {
		this.K = K;
		this.epsilon = epsilon;
		this.clusterAlgorithm = clusterAlgorithm;
	}

	/*----- Methods that must be overridden -----*/
	/**
	 * Parses the fuzzing input and extract one public value and K secret values.
	 * 
	 * @param fileInputStream - Byte input stream.
	 * @return pair of public and secret values
	 * @throws Exception
	 */
	public abstract Input parseInput(FileInputStream fileInputStream) throws Exception;

	/**
	 * Executes the application with the given public and secret value.
	 * 
	 * @param publicValue - public value
	 * @param secretValue - secret value
	 * @throws Exception
	 */
	public abstract void runOne(Object publicValue, Object secretValue) throws Exception;
	/*----- End -----*/

	/*----- Methods that can be overridden as needed -----*/

	/**
	 * Converts the public value from its String representation to the
	 * application-specific data representation. NOTE: this method NEEDS to the
	 * overridden if the application-specific type is *not* a String object.
	 * 
	 * @param publicValue - public value as String
	 * @return application-specific data of the public value
	 */
	public Object publicFromString(String publicValue) {
		return publicValue;
	}

	/**
	 * Converts the secret value from its String representation to the
	 * application-specific data representation. NOTE: this method NEEDS to the
	 * overridden if the application-specific type is *not* a String object.
	 * 
	 * @param secretValue - secret value as String
	 * @return application-specific data of the public value
	 */
	public Object secretFromString(String secretValue) {
		return secretValue;
	}

	/**
	 * Converts the public value from its application-specific data representation
	 * to a String representation. NOTE: this method NEEDS to the overridden if the
	 * application-specific type is *not* a String object.
	 * 
	 * @param publicValue - public value as application-specific data type
	 * @return String representation of the public value
	 */
	public String publicToString(Object publicValue) {
		return publicValue.toString();
	}

	/**
	 * Converts the secret value from its application-specific data representation
	 * to a String representation. NOTE: this method NEEDS to the overridden if the
	 * application-specific type is *not* a String object.
	 * 
	 * @param secretValue - secret value as application-specific data type
	 * @return String representation of the secret value
	 */
	public String secretToString(Object secretValue) {
		return secretValue.toString();
	}

	public void beforeFuzzingCampaign() {
		Mem.clear(true);
	}

	public void beforeRunOne() {
		Mem.clear(false);
	}

	public long getObservation() {
		return Mem.instrCost;
	}

	public void afterRunOne() {
		// do nothing by default
	}

	public void afterFuzzingCampaign() {
		// do nothing by default
	}
	/*----- End -----*/

	/*----- You can ignore everything below this line -----*/

	/**
	 * Converts an array of secret values in their application-specific data
	 * representation to their string representation.
	 * 
	 * @param secretArray - array of secret values in their application-specific
	 *                    representation
	 * @return converted String array
	 */
	public String[] secretArrayToString(Object[] secretArray) {
		String[] returnValue = new String[secretArray.length];
		for (int i = 0; i < secretArray.length; i++) {
			returnValue[i] = secretToString(secretArray[i]);
		}
		return returnValue;
	}

	public final void acceptFile(String filename) {
		try (FileInputStream fis = new FileInputStream(filename)) {
			Input input = parseInput(fis);
			publicValue = input.publicValue;
			secretValues = input.secretValues;
			assert secretValues.length == K;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		observations = new long[K];
		beforeFuzzingCampaign();
		for (int i = 0; i < K; i++) {
			beforeRunOne();
			try {
				runOne(publicValue, secretValues[i]);
			} catch (Exception e) {
				/*
				 * : FIXME We can't just pretend that there is no exception, because this
				 * leads to misleading cost values. But for now, if we throw an exception here,
				 * Kelinci crashes. Have to check how to fix this.
				 */
				// do nothing
			}
			observations[i] = getObservation();
		}

		/*
		 * : WARNING: this function has side effects: it sorts the observation array.
		 */
		PartitionSet clusters = PartitionSet.createFromObservations(epsilon, observations.clone(), clusterAlgorithm);

		Kelinci.setObserverdClusters(clusters.getClusterAverageValues(), clusters.getMinimumDeltaValue());

		Report report = new Report(clusters.getNumClusters(), K, publicToString(publicValue),
				secretArrayToString(secretValues), observations);
		System.out.print(report.toString());
	}

	static class Report {
		public final int numClusters;
		public final int K;
		public final String publicValue;
		public String[] secrets;
		public long[] costs;

		Report(int numClusters, int K, String publicValue, String[] secrets, long[] costs) {
			this.numClusters = numClusters;
			this.K = K;
			this.publicValue = publicValue;
			this.secrets = secrets;
			this.costs = costs;
		}

		public String toString() {
			StringBuilder builder = new StringBuilder();
			builder.append("====report begins====\n");
			builder.append("#clusters=").append(numClusters).append("\n");
			builder.append("K=").append(K).append("\n");
			builder.append("public=").append(publicValue).append("\n");
			builder.append("secret\tcost\n");
			for (int i = 0; i < K; i++) {
				builder.append(secrets[i]).append("\t").append(costs[i]).append("\n");
			}
			builder.append("====report ends====\n");
			return builder.toString();
		}

		public static Report valueOf(String s) {
			String[] lines = s.split("\n");
			int numClusters = Integer.valueOf(lines[1].substring("#clusters=".length()));
			int K = Integer.valueOf(lines[2].substring("K=".length()));
			String publicValue = lines[3].substring("public=".length());
			String[] secrets = new String[K];
			long[] costs = new long[K];
			for (int i = 0; i < K; i++) {
				String[] tmp = lines[i + 5].split("\t");
				secrets[i] = tmp[0];
				costs[i] = Long.valueOf(tmp[1]);
			}
			Report report = new Report(numClusters, K, publicValue, secrets, costs);
			return report;
		}
	}

	public static class Input {
		private Object publicValue;
		private Object[] secretValues;

		public Input(Object publicValue, Object[] secretValues) {
			this.publicValue = publicValue;
			this.secretValues = secretValues;
		}

		public Object getPublicValue() {
			return publicValue;
		}

		public Object[] getSecretValues() {
			return secretValues;
		}
	}
}
