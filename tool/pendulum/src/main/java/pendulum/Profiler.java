package pendulum;

import java.util.*;

public class Profiler {

	private static Map<String, Integer> counter = new HashMap<>();

	private static List<String> trace = new ArrayList<>();

	public static void main(String[] args) {
		for (int i = 0; i < 3; i++) {
			add("a");
		}
		for (int i = 0; i < 8; i++) {
			add("b");
		}
		print();
	}
	
	public static void reset() {
		counter.clear();

		trace.clear();
	}

	public static void add(String s) {
		Integer c = counter.getOrDefault(s, 0);
		counter.put(s, ++c);

		trace.add(s);
	}

	public static void print() {
		counter.forEach((k, v) ->
			System.out.println(k + ": " + v.toString()));
	}

	public static Map<String, Integer> getCounterCopy() {
		return new HashMap<String, Integer>(counter);
	}

	public static List<String> getTraceCopy() {
		return new ArrayList<>(trace);
	}
}
