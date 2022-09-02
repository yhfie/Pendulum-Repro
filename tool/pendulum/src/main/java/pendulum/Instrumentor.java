package pendulum;

import javassist.bytecode.*;
import pendulum.bytecode.BlockInfo;

import javassist.CannotCompileException;
import javassist.ClassPool;
import javassist.CtClass;
import javassist.CtMethod;
import javassist.NotFoundException;

import javassist.bytecode.analysis.ControlFlow;
import javassist.bytecode.analysis.ControlFlow.Block;

import org.kohsuke.args4j.CmdLineException;
import org.kohsuke.args4j.CmdLineParser;

import java.io.IOException;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import java.util.Set;
import java.util.TreeSet;

import static pendulum.util.BytecodeUtils.isInvokeOpcode;

public class Instrumentor {
	public static CtClass instrumentClass(
			ClassPool classPool, String className) {
		/* obtain the class to instrument */
		CtClass ctClass;
		try {
			ctClass = classPool.get(className);
		} catch (NotFoundException e) {
			throw new RuntimeException(e);
		}

		/* obtain Profiler */
		CtClass instrClass;
		MethodInfo instrMethodInfo;
		try {
			instrClass = classPool.get("pendulum.Profiler");
			instrClass.defrost();  // Profiler can be loaded multiple times
			instrMethodInfo =
					instrClass.getDeclaredMethod("add").getMethodInfo();
		} catch (NotFoundException e) {
			throw new RuntimeException(e);
		}

		if (instrClass == ctClass) {
			System.out.println(String.format(
					"Won't instrument %s: is the profiler itself",
					instrClass.getName()));
			return ctClass;
		}

		/* begin instrumentation */
		CtMethod[] ctMethods =  ctClass.getDeclaredMethods();

		for (int m = 0; m < ctMethods.length; m++) {
			CtMethod ctMethod = ctMethods[m];
			MethodInfo methodInfo = ctMethod.getMethodInfo();
			ConstPool constPool = methodInfo.getConstPool();
			CodeAttribute ca = methodInfo.getCodeAttribute();
			if (ca == null) {
				continue;
			}
			CodeIterator it = ca.iterator();

			ControlFlow oldFlow;
			try {
				oldFlow = new ControlFlow(ctMethod);
			} catch (BadBytecode e) {
				throw new RuntimeException(e);
			}
			Block[] oldBlocks = oldFlow.basicBlocks();

			TreeSet<Integer> instrPositions = new TreeSet<>();
			for (Block block: oldBlocks) {
				instrPositions.add(block.position());
			}
			try {
				it.begin();
				int lastOpcode = Opcode.NOP;
				while (it.hasNext()) {
					int pc = it.next();
					if (isInvokeOpcode(lastOpcode)) {
						instrPositions.add(pc);
					}
					lastOpcode = it.byteAt(pc);
				}
			} catch (BadBytecode e) {
				throw new RuntimeException(e);
			}

			int offset = 0;
			for (Integer pos: instrPositions) {
				BlockInfo blockInfo = new BlockInfo(
						ctClass.getName(), methodInfo.getName(),
						methodInfo.getDescriptor(), pos);

				Bytecode bytecode = new Bytecode(constPool);
				bytecode.addLdc(blockInfo.toString());
				bytecode.addInvokestatic(
						instrClass.getName(),
						instrMethodInfo.getName(),
						instrMethodInfo.getDescriptor());


				int gapSize;
				try {
					int insertionPos = pos + offset;
					it.move(insertionPos);
					it.insert(bytecode.get());
					/* : `gapSize` may be larger than `bytecode.length()`; see documentation of `CodeIterator.insert`*/
					gapSize = it.lookAhead() - insertionPos;

				} catch (BadBytecode e) {
					System.out.println("error while instrumenting at " + blockInfo);
					throw new RuntimeException(e);
				}

				offset += gapSize;
			}

			try {
				ca.computeMaxStack();
			} catch (BadBytecode e) {
				throw new RuntimeException(e);
			}
		}

		return ctClass;
	}


	public static CtClass instrumentClass(String className) {
		return instrumentClass(ClassPool.getDefault(), className);
	}	

	private static void writeClass(CtClass ctClass) {
		String className = ctClass.getName();
		String cls = className.replace(".", "/") + ".class";
		String path = Options.v().getOutput().endsWith("/") ?
				Options.v().getOutput() + cls :
					Options.v().getOutput() + "/" + cls;
		Path out = Paths.get(path);
		try {
			Files.createDirectories(out.getParent());
			Files.write(out, ctClass.toBytecode());
			System.out.println("File written: " + path);
		} catch (IOException e) {
			throw new RuntimeException(e);
		} catch (CannotCompileException e) {
			throw new RuntimeException(e);
		}
	}

	public static void main(String[] args) {
		Options options = Options.v();
		CmdLineParser parser = new CmdLineParser(options);
		try {
			parser.parseArgument(args);
		} catch (CmdLineException e) {
			parser.printUsage(System.err);
			return;
		}

		Set<String> classNames = options.getInputClasses();
		classNames.forEach(className -> writeClass(instrumentClass(className)));
	}
}
