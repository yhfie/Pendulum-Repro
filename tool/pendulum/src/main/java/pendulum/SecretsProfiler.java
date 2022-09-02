package pendulum;

import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.List;
import java.util.ArrayList;

public class SecretsProfiler {
	public static Map<String, Map<String, Integer>> profileSecrets(
			AbstractQDriver driver, String publicValue, String[] secrets, int K) {
		Set<String> bbNames = new HashSet<>();
		List<Map<String, Integer>> bbNameToCounts = new ArrayList<>();

		driver.beforeFuzzingCampaign();
		for (int i = 0; i < K; i++) {
			Object publicObj = driver.publicFromString(publicValue);
			Object secretObj = driver.secretFromString(secrets[i]);

			driver.beforeRunOne();
			Profiler.reset();
			try {
				driver.runOne(publicObj, secretObj);
			} catch (Exception e) {
				/*
				 * : FIXME
				 * We can't just pretend that there is no exception, because
				 * this leads to misleading cost values.
				 * But for now, if we throw an exception here, Kelinci crashes.
				 * Have to check how to fix this.
				 */
				// do nothing
			}
			Map<String, Integer> counter = Profiler.getCounterCopy();
			bbNames.addAll(counter.keySet());
			bbNameToCounts.add(counter);

			driver.afterRunOne();
		}
		driver.afterFuzzingCampaign();

		Map<String, Map<String, Integer>> result = new HashMap<>();
		for (String bbName: bbNames) {
			Map<String, Integer> secretToCount = new HashMap<>();
			for (int i = 0; i < K; i++) {
				int count = bbNameToCounts.get(i).getOrDefault(bbName, 0);
				secretToCount.put(secrets[i], count);
			}
			result.put(bbName, secretToCount);
		}
		return result;
	}

	public static Map<String, List<String>> traceSecrets(
			AbstractQDriver driver, String publicValue, String[] secrets, int K) {
		Map<String, List<String>> result = new HashMap<>();

		driver.beforeFuzzingCampaign();
		for (int i = 0; i < K; i++) {
			Object publicObj = driver.publicFromString(publicValue);
			Object secretObj = driver.secretFromString(secrets[i]);

			driver.beforeRunOne();
			Profiler.reset();
			try {
				driver.runOne(publicObj, secretObj);
			} catch (Exception e) {
				/*
				 * : FIXME
				 * We can't just pretend that there is no exception, because
				 * this leads to misleading cost values.
				 * But for now, if we throw an exception here, Kelinci crashes.
				 * Have to check how to fix this.
				 */
				// do nothing
			}

			List<String> trace = Profiler.getTraceCopy();
			result.put(secrets[i], trace);
			driver.afterRunOne();
		}
		driver.afterFuzzingCampaign();

		return result;
	}

}
