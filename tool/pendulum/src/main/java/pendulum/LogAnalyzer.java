package pendulum;

import edu.cmu.sv.kelinci.quantification.Greedy;
import edu.cmu.sv.kelinci.quantification.Partition;
import edu.cmu.sv.kelinci.quantification.PartitionAlgorithm;
import edu.cmu.sv.kelinci.quantification.PartitionSet;
import javassist.CannotCompileException;
import javassist.ClassPool;
import javassist.Loader;
import javassist.NotFoundException;
import javassist.Translator;
import pendulum.bytecode.BlockInfo;
import pendulum.util.BytecodeUtils;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Method;

import java.util.*;
import java.util.stream.Collectors;

class LogAnalyzer {
	String driverClassName;
	File logFile;
	AbstractQDriver.Report selectedReport;
	Map<String, Map<String, Integer>> bbCounts;
	Map<String, List<String>> traces;
	Map<String, Map<String, Set<String>>> diffTable;
	List<String> chosenSecrets;

	public LogAnalyzer(String driverClassName, File logFile) {
		this.driverClassName = driverClassName;
		this.logFile = logFile;
		this.selectedReport = null;
		this.bbCounts = null;
	}

	public void analyzeLog() {
		try (BufferedReader reader =
				new BufferedReader(new FileReader(logFile))) {
			boolean inReport = false;
			int maxNumClusters = -1;

			String line = null;
			StringBuilder reportBuilder = null;
			while ((line = reader.readLine()) != null) {
				if (line.equals("====report begins====")) {
					inReport = true;
					reportBuilder = new StringBuilder();
				}

				if (inReport) {
					reportBuilder.append(line).append("\n");
				}

				if (line.equals("====report ends====")) {
					inReport = false;
					AbstractQDriver.Report report =
						AbstractQDriver.Report.valueOf(reportBuilder.toString());
					if (report.numClusters > maxNumClusters) {
						maxNumClusters = report.numClusters;
						selectedReport = report;
					}
				}
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public void profileSecrets() throws Exception {
		Translator translator = new OnLoadInstrumentor();
		boolean useDefaultPath = true;
		ClassPool classPool = new ClassPool(useDefaultPath);
		Loader loader = new Loader(classPool);
		loader.addTranslator(classPool, translator);

		Class<?> abstractDriverClass =
				loader.loadClass("pendulum.AbstractQDriver");
		Class<?> secretProfilerClass = loader.loadClass(
				"pendulum.SecretsProfiler");
		Method method = secretProfilerClass.getMethod(
				"profileSecrets",
				abstractDriverClass, String.class, String[].class, int.class);

		Class<?> driverClass = loader.loadClass(driverClassName);
		Object qDriver = driverClass.getConstructor().newInstance();

		@SuppressWarnings("unchecked")
		Map<String, Map<String, Integer>> result =
				(Map<String, Map<String, Integer>>) method.invoke(
						null, qDriver, selectedReport.publicValue,
						selectedReport.secrets, selectedReport.K);
		bbCounts = result;
	}

	public void traceSecrets() throws Exception {
		Translator translator = new OnLoadInstrumentor();
		boolean useDefaultPath = true;
		ClassPool classPool = new ClassPool(useDefaultPath);
		Loader loader = new Loader(classPool);
		loader.addTranslator(classPool, translator);

		Class<?> abstractDriverClass =
				loader.loadClass("pendulum.AbstractQDriver");
		Class<?> secretProfilerClass = loader.loadClass(
				"pendulum.SecretsProfiler");
		Method method = secretProfilerClass.getMethod(
				"traceSecrets",
				abstractDriverClass, String.class, String[].class, int.class);

		Class<?> driverClass = loader.loadClass(driverClassName);
		Object qDriver = driverClass.getConstructor().newInstance();

		@SuppressWarnings("unchecked")
		Map<String, List<String>> result =
				(Map<String, List<String>>) method.invoke(
						null, qDriver, selectedReport.publicValue,
						selectedReport.secrets, selectedReport.K);
		traces = result;
	}

	public List<String> getVariantBlocks() {
		List<String> result = bbCounts.keySet().stream()
				.filter(bbName->{
					Set<Integer> valueSet = new HashSet<>();
					valueSet.addAll(bbCounts.get(bbName).values());
					return valueSet.size() > 1;
				})
				.collect(Collectors.toList());
		return result;
	}
	
	public void diffTraces() {
		diffTable = new HashMap<>();
		Map<Long, String> costToSecret = new HashMap<>();

		PartitionAlgorithm greedy = new Greedy(false);
		PartitionSet clusters = PartitionSet.createFromObservations(1.0, selectedReport.costs.clone(), greedy);
		for (Partition cluster: clusters.getClusters()) {
			costToSecret.put(cluster.getMax(), null);
		}

		chosenSecrets = new ArrayList<String>();
		for (int i = 0; i < selectedReport.K; i++) {
			String secret = selectedReport.secrets[i];
			long cost = selectedReport.costs[i];
			if (costToSecret.containsKey(cost) && (costToSecret.get(cost) == null)) {
				costToSecret.put(cost, secret);
				chosenSecrets.add(secret);
			}
		}

		int n = chosenSecrets.size();
		for (int i = 0; i < n; i++) {
			String s1 = chosenSecrets.get(i);
			diffTable.put(s1, new HashMap<>());
			for (int j = i + 1; j < n; j++) {
				String s2 = chosenSecrets.get(j);
				List<String> differences = diffTraces(traces.get(s1), traces.get(s2));
				diffTable.get(s1).put(s2, new HashSet<>(differences));
			}
		}
	}

	public Map<String, Map<String, Set<String>>> getDiffTable() {
		return diffTable;
	}

	public List<String> getDivergingBlocks() {
		Set<String> result = new HashSet<>();
		Map<Long, String> costToSecret = new HashMap<>();
		for (int i = 0; i < selectedReport.K; i++) {
			String secret = selectedReport.secrets[i];
			long cost = selectedReport.costs[i];
			costToSecret.put(cost, secret);
		}
		List<String> uniqSecrets = new ArrayList<String>(costToSecret.values());
		int n = uniqSecrets.size();
		for (int i = 0; i < n; i++) {
			for (int j = i + 1; j < n; j++) {
				String s1 = uniqSecrets.get(i);
				String s2 = uniqSecrets.get(j);
				List<String> diffs = diffTraces(traces.get(s1), traces.get(s2));
				result.addAll(diffs);
			}
		}
		return new ArrayList<>(result);
	}

	private List<String> diffTraces(List<String> t1, List<String> t2) {
		assert t1.get(0).equals(t2.get(0));
		int i = 0, j = 0;
		int n1 = t1.size(), n2 = t2.size();
		List<String> result = new ArrayList<>();
		while (true) {
			String postDom = null;
			while (i < n1 && j < n2) {
				String s1 = t1.get(i);
				String s2 = t2.get(j);
				if (s1.equals(s2)) {
					i++;
					j++;
				} else {
					String last = t1.get(i - 1);
					result.add(last);

					postDom = BytecodeUtils.postDominator(last);
					String methodName = BlockInfo.valueOf(last).getFullMethodName();
					String block = (new BlockInfo(methodName, 0)).toString();
					String callSite;
					for (int k = i - 1; (postDom == null) && (k > 0); k--) {
						if (!block.equals(t1.get(k))) {
							continue;
						}
						
						callSite = t1.get(k - 1);
						postDom = BytecodeUtils.postDominator(callSite);
						methodName = BlockInfo.valueOf(callSite).getFullMethodName();
						block = (new BlockInfo(methodName, 0)).toString();
					}
					break;
				}
			}
			if (postDom == null)
				break;
			while (!t1.get(i).equals(postDom)) i++;
			while (!t2.get(j).equals(postDom)) j++;
		}
		return result;
	}

	public static void main(String[] args) throws Exception {
		LogAnalyzer analyzer = new LogAnalyzer("QDriver",
				new File("server.log"));
		analyzer.analyzeLog();
		analyzer.traceSecrets();
		System.out.println(analyzer.getDivergingBlocks());
	}
}

class OnLoadInstrumentor implements Translator {
	@Override
	public void start(ClassPool pool)
	throws NotFoundException, CannotCompileException {}

	@Override
	public void onLoad(ClassPool pool, String classname) {
		try {
			File file = null;
			int index = classname.lastIndexOf(".");
			if (index != -1) {
				String packageName =
						classname.substring(0, index).replace('.', '/');
				String simpleClassName = classname.substring(index + 1);
				file = new File(String.format("bin/%s/%s.class",
						packageName, simpleClassName));
			} else {
				file = new File(String.format("bin/%s.class", classname));
			}
			if (!file.exists()) {
				return;
			}
			// CtClass ctClass = pool.get(classname);
			// String srcFilename = ctClass.getClassFile().getSourceFile();

			// CtClass abstractDriver =
			// 		pool.get("pendulum.AbstractQDriver");
			// CtClass secretsProfiler =
			// 		pool.get("pendulum.SecretsProfiler");
			// CtClass cls = pool.get(classname);
			// if (cls.subclassOf(abstractDriver)) {
			// 	System.out.println(String.format(
			// 		"Won't instrument %s: is a subclass of AbstractQDriver",
			// 		classname));
			// 	return;
			// } else if (cls.subclassOf(secretsProfiler)) {
			// 	System.out.println(String.format(
			// 		"Won't instrument %s",
			// 		classname));
			// 	return;
			// }
		} /*catch (NotFoundException e) {
			throw new RuntimeException(e);
		}*/ catch (SecurityException e) {
			throw new RuntimeException(e);
		}
		Instrumentor.instrumentClass(pool, classname);
	}
}
