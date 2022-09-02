package pendulum.bytecode;

import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BlockInfo {
	/*
	 * Unfortunately, Java doesn't have equivalent of sscanf().
	 */
	private static final String nameFormat = "%s.%s:%s:%s";
	private static final String nameRegex = "(.*)\\.([^:]*):([^:]*):(.*)";
	private static final String fullMethodNameFormat = "%s.%s:%s";
	private static final String fullMethodNameRegex = "(.*)\\.([^:]*):([^:]*)";

	public final String className;
	public final String methodName;
	public final String methodDesc;
	public final int pc;

	public BlockInfo(String className, String methodName,
				String methodDesc, int pc) {
		this.className = className;
		this.methodName = methodName;
		this.methodDesc = methodDesc;
		this.pc = pc;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		BlockInfo blockInfo = (BlockInfo) o;
		return pc == blockInfo.pc && className.equals(blockInfo.className)
				&& methodName.equals(blockInfo.methodName) && methodDesc.equals(blockInfo.methodDesc);
	}

	@Override
	public int hashCode() {
		return Objects.hash(className, methodName, methodDesc, pc);
	}

	public BlockInfo(String fullMethodName, int pc) {
		Pattern p = Pattern.compile(fullMethodNameRegex);
		Matcher m = p.matcher(fullMethodName);
		BlockInfo b = null;
		if (m.matches()) {
			this.className = m.group(1);
			this.methodName = m.group(2);
			this.methodDesc = m.group(3);
			this.pc = pc;
		} else {
			throw new RuntimeException();
		}
	}

	public BlockInfo replacePc(int pc) {
		BlockInfo bInfo = new BlockInfo(
				className, methodName, methodDesc, pc);
		return bInfo;
	}

	public String getFullMethodName() {
		String fullMethodName = String.format(
				fullMethodNameFormat, className, methodName, methodDesc);
		return fullMethodName;
	}

	public String toString() {
		String name = String.format(nameFormat,
				className, methodName,
				methodDesc, String.valueOf(pc));
		return name;
	}

	public static BlockInfo valueOf(String name) {
		Pattern p = Pattern.compile(nameRegex);
		Matcher m = p.matcher(name);
		BlockInfo b = null;
		if (m.matches()) {
			b = new BlockInfo(m.group(1), m.group(2),
					m.group(3), Integer.valueOf(m.group(4)));
		}
		return b;
	}

	public static String stripPC(String name) {
		return valueOf(name).getFullMethodName();
	}
}
