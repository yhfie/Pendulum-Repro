package edu.cmu.sv.kelinci.instrumentor;

import java.util.HashSet;
import java.util.Random;
import java.io.IOException;

import javassist.*;
import javassist.bytecode.*;
import javassist.bytecode.analysis.*;
import javassist.bytecode.analysis.ControlFlow.Block;

import edu.cmu.sv.kelinci.Mem;

public class ClassTransformer {

	private HashSet<Integer> ids = new HashSet<>();
	Random r = new Random();

	/**
	 * Best effort to generate a random id that is not already in use.
	 */
	private int getNewLocationId() {
		int id;
		int tries = 0;
		do {
			id = r.nextInt(Mem.BUFFER_SIZE);
			tries++;
		} while (tries <= 10 && ids.contains(id));
		ids.add(id);
		return id;
	}

	private void addAfl(Bytecode bytecode) {
		int curLocation = getNewLocationId();
		ConstPool constPool = bytecode.getConstPool();

		bytecode.addGetstatic("edu/cmu/sv/kelinci/Mem", "mem", "[B");
		bytecode.addLdc(constPool.addIntegerInfo(curLocation));
		bytecode.addGetstatic("edu/cmu/sv/kelinci/Mem",
				"prev_location", "I");
		bytecode.addOpcode(Opcode.IXOR);
		bytecode.addOpcode(Opcode.DUP2);
		bytecode.addOpcode(Opcode.BALOAD);
		bytecode.addOpcode(Opcode.ICONST_1);
		bytecode.addOpcode(Opcode.IADD);
		bytecode.addOpcode(Opcode.I2B);
		bytecode.addOpcode(Opcode.BASTORE);

		bytecode.addOpcode(Opcode.SIPUSH);
		int tmp = curLocation >> 1;
		bytecode.add((tmp & 0xff00) >> 8, tmp & 0xff);

		bytecode.addPutstatic("edu/cmu/sv/kelinci/Mem",
				"prev_location", "I");
	}

	private void addCounting(Bytecode bytecode, long bbSize) {
		bytecode.addGetstatic(
			"edu/cmu/sv/kelinci/Mem",
			"instrCost", "J");
		bytecode.addLconst(bbSize);
		bytecode.addOpcode(Opcode.LADD);
		bytecode.addPutstatic(
			"edu/cmu/sv/kelinci/Mem",
			"instrCost", "J");
	}

	public byte[] instrumentClass(String className) {
		ClassPool classPool = ClassPool.getDefault();

		/* obtain the class to instrument */
		CtClass ctClass;
		try {
			ctClass = classPool.get(className);
		} catch (NotFoundException e) {
			String msg = "class " + className + " not found";
			System.out.println(msg);
			throw new RuntimeException(msg);
		}

		/* begin instrumentation */
		CtMethod[] ctMethods =  ctClass.getDeclaredMethods();
		for (int m = 0; m < ctMethods.length; m++) {
			CtMethod ctMethod = ctMethods[m];
			MethodInfo methodInfo = ctMethod.getMethodInfo();

			if (Options.v().skipMain()
					&& methodInfo.getName().equals("main")) {
				continue;
			}

			ConstPool constPool = methodInfo.getConstPool();
			CodeAttribute ca = methodInfo.getCodeAttribute();
			if (ca == null) {
				continue;
			}
			CodeIterator it = ca.iterator();

			String fullMethodName = (
				ctClass.getName() + "."
				+ methodInfo.getName()
				+ ":" + methodInfo.getDescriptor());
			// System.out.println("instrument " + fullMethodName);

			ControlFlow oldFlow;
			try {
				oldFlow = new ControlFlow(ctMethod);
			} catch (BadBytecode e) {
				System.out.println(
						"cannot get control flow of method"
						+ fullMethodName);
				continue;
			}
			Block[] oldBlocks = oldFlow.basicBlocks();
			int bbNumber = oldBlocks.length;
			/*
			 * count the number of instructions in each block
			 * before we change anything
			 */
			long[] instCounts = new long[bbNumber];
			try {
				it.begin();
				it.next();
				for (int i = 0, count, nextPos; i < bbNumber; i++) {

					count = 1;
					Block block = oldBlocks[i];
					nextPos = block.position() + block.length();

					while (it.hasNext()) {
						if (it.next() >= nextPos) {
							break;
						}
						count++;
					}
					instCounts[i] = count;
				}
			} catch (BadBytecode e) {
				throw new RuntimeException("bad bytecode");
			}

			for (int i = 0; i < bbNumber; i++) {
				ControlFlow newFlow;
				try {
					newFlow = new ControlFlow(ctMethod);
				} catch (BadBytecode e) {
					System.out.println(
							"cannot get control flow of method "
							+ fullMethodName);
					break;
				}
				Block[] newBlocks = newFlow.basicBlocks();
				int pos = newBlocks[i].position();

				Bytecode bytecode = new Bytecode(constPool);
				addAfl(bytecode);
				addCounting(bytecode, instCounts[i]);
				try {
					it.insert(pos, bytecode.get());
				} catch (BadBytecode e) {
					String bbName = fullMethodName
							+ ":"
							+ Integer.toString(oldBlocks[i].position());
					System.out.println("failed to instrument " + bbName);
					continue;
				}
			}

			try {
				ca.computeMaxStack();
			} catch (BadBytecode e) {
				throw new RuntimeException("bad bytecode");
			}
		}

		try {
			return ctClass.toBytecode();
		} catch (CannotCompileException e) {
			String msg = "connot compile instrumented class " + className;
			System.out.println(msg);
			throw new RuntimeException(msg);
		} catch (IOException e) {
			String msg = "cannot write instrumented class " + className;
			System.out.println(msg);
			throw new RuntimeException(msg);
		}
	}
}
