package pendulum;

import java.util.HashSet;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;

import org.kohsuke.args4j.Option;

public class Options {
	@Option(name = "-i", usage = "Specify input dir", required = true)
	private String input;
	private HashSet<String> inputClasses;

	@Option(name = "-o", usage = "Specify output dir", required = true)
	private String output;	

	public String getRawInput() {
		return input;
	}

	public HashSet<String> getInputClasses() {
		if (inputClasses == null) {
			inputClasses = new HashSet<>();
			if (input.endsWith(".class")) {
				int beginIndex = input.lastIndexOf("/") + 1;
				inputClasses.add(
					input.substring(
						beginIndex,
						input.lastIndexOf(".class")));
				addToClassPath(input.substring(0, beginIndex));
			} else {
				/* directory */
				loadDirectory(input, inputClasses);
				addToClassPath(input);
			}
		}
		return inputClasses;
	}

	public String getOutput() {
		return output;
	}

	private static void addToClassPath(String url) {
		try {
			File file = new File(url);
			Method method = URLClassLoader.class
					.getDeclaredMethod("addURL", new Class[]{URL.class});
			method.setAccessible(true);
		    method.invoke(
					ClassLoader.getSystemClassLoader(),
					new Object[]{file.toURI().toURL()});
		} catch (Exception e) {
			throw new RuntimeException(
					"Error adding location to class path: "
					+ url);
		}
	}
	    
	// private void loadDirectory(String input,
	// 		HashSet<String> inputClasses) {
	// 	final int dirprefix;
	// 	if (input.endsWith("/")) {
	// 		dirprefix = input.length();
	// 	} else {
	// 		dirprefix = input.length()+1;
	// 	}
		
	// 	try {
	// 		Files.walk(Paths.get(input)).filter(Files::isRegularFile)
	// 				.forEach(filePath -> {
	// 			String name = filePath.toString();
	// 			System.out.println("Found file " + name);
	// 			int index = name.lastIndexOf(".class");
	// 			if (index != -1) {
	// 				inputClasses.add(
	// 						name.substring(dirprefix, index));
	// 			}

	// 		});
	// 	} catch (IOException e) {
	// 		throw new RuntimeException(
	// 				"Error reading from directory: " + input);
	// 	}
	// }

	private void loadDirectory(String input, HashSet<String> inputClasses) {
		final int dirprefix;
		if (input.endsWith("/"))
			dirprefix = input.length();
		else
			dirprefix = input.length()+1;
		
		Path thisDir = Paths.get(input);

		try {
			Files.walk(thisDir, 1).forEach(filePath -> {
				try {
					if (Files.isRegularFile(filePath)) {
						String name = filePath.toString();
						System.out.println("Found file " + name);
						if (name.endsWith(".class")) {
							int index = name.lastIndexOf(".class");
							inputClasses.add(
									name.substring(dirprefix, index));
						}
					} else if (Files.isDirectory(filePath)) {
						if (!Files.isSameFile(filePath, thisDir)) {
							loadSubDirectory(filePath.toString(), inputClasses, dirprefix);
						}
					} else if (Files.isSymbolicLink(filePath)) {
						throw new RuntimeException(
								"Error loading " + input
								+ ": Symlinks are now not supported yet");
					} else {
						throw new RuntimeException("Error loading " + input);
					}
				} catch (IOException e) {
					throw new RuntimeException("Error reading from directory: " + filePath.toString());
				}
			});
		} catch (IOException e) {
			throw new RuntimeException("Error reading from directory: " + input);
		}
	}

	private void loadSubDirectory(String input,
			HashSet<String> inputClasses, int rootDirLength) {

		Path thisDir = Paths.get(input);

		try {
			Files.walk(thisDir, 1).forEach(filePath -> {
				try {
					if (Files.isRegularFile(filePath)) {
						String name = filePath.toString();
						System.out.println("Found file " + name);
						if (name.endsWith(".class")) {
							int index = name.lastIndexOf(".class");
							String className =
									name.substring(rootDirLength, index).replace('/', '.');
							inputClasses.add(className);
							String subDirName = name.substring(
									0, name.lastIndexOf("/"));
							addToClassPath(subDirName);
						}
					} else if (Files.isDirectory(filePath)) {
						if (!Files.isSameFile(thisDir, filePath)) {
							loadSubDirectory(
									filePath.toString(), inputClasses, rootDirLength);
						}
					} else if (Files.isSymbolicLink(filePath)) {
						throw new RuntimeException(
								"Error loading " + input
								+ ": Symlinks are now not supported yet");
					} else {
						throw new RuntimeException("Error loading " + input);
					}
				} catch (IOException e) {
					throw new RuntimeException("Error reading from directory: " + filePath.toString());
				}
			});
		} catch (IOException e) {
			throw new RuntimeException("Error reading from directory: " + input);
		}
	}

	/**
	 * Singleton
	 */

	private static Options options;

	public static void resetInstance() {
		options = null;
	}

	public static Options v() {
		if (null == options) {
			options = new Options();
		}
		return options;
	}

	private Options() {
		// do nothing
	}
}
