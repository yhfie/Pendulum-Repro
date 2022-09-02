package pendulum.util;

import javassist.bytecode.CodeAttribute;
import javassist.bytecode.CodeIterator;
import org.eclipse.jdt.core.dom.PrimitiveType;
import pendulum.bytecode.BlockInfo;

import javassist.bytecode.analysis.ControlFlow;
import javassist.bytecode.analysis.ControlFlow.Block;
import javassist.bytecode.analysis.ControlFlow.Node;
import javassist.bytecode.BadBytecode;
import javassist.ClassPool;
import javassist.CtClass;
import javassist.CtMethod;
import javassist.NotFoundException;

import java.io.File;

import java.net.URISyntaxException;
import java.net.URL;

import java.util.*;

public class BytecodeUtils {
	public static File getSourceFileOfMethod(String fullMethodName) {
		try {
			ClassPool classPool = ClassPool.getDefault();
			BlockInfo bInfo = new BlockInfo(fullMethodName, 0);
			CtClass ctClass = classPool.get(bInfo.className);
			String srcFilename = ctClass.getClassFile().getSourceFile();

			String packageName = ctClass.getPackageName();
			String path = null;
			if (packageName != null) {
				path = packageName.replaceAll("\\.", "/") + "/" + srcFilename;
			} else {
				path = srcFilename;
			}
			URL srcUrl = classPool.getClassLoader().getResource(path);
			File srcFile = new File(srcUrl.toURI());
			return srcFile;
		} catch (NotFoundException e) {
			throw new RuntimeException(e);
		} catch (URISyntaxException e) {
			throw new RuntimeException(e);
		}
	}

	public static CtMethod getCtMethodByFullName(String fullMethodName) {
		try {
			ClassPool classPool = ClassPool.getDefault();
			BlockInfo bInfo = new BlockInfo(fullMethodName, 0);
			CtClass ctClass = classPool.get(bInfo.className);
			CtMethod ctMethod = ctClass.getMethod(bInfo.methodName, bInfo.methodDesc);
			return ctMethod;
		} catch (NotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	public static List<Integer[]> getBackEdges(CtMethod ctMethod) {
		try {
			List<Integer[]> result = new ArrayList<>();
			ControlFlow flow = new ControlFlow(ctMethod);
			Node[] domTree = flow.dominatorTree();
			int numberOfBlocks = domTree.length;
			for (int i = numberOfBlocks - 1; i >= 0; i--) {
				Node node = domTree[i];
				Block bb = node.block();
				int numberOfSucc = bb.exits();
				Node dominator = node.parent();
				while (dominator != null) {
					int domPc = dominator.block().position();
					for (int j = 0; j < numberOfSucc; j++) {
						if (domPc == bb.exit(j).position()) {
							result.add(new Integer[]{bb.position(), domPc});
							break;
						}
					}
					dominator = dominator.parent();
				}
			}
			return result;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public static List<Integer> getLoopOfBackEdge(CtMethod ctMethod, int u, int v) {
		Block bu = null;
		Block bv = null;
		ControlFlow flow = null;
		try {
			flow = new ControlFlow(ctMethod);
		} catch (BadBytecode e) {
			throw new RuntimeException(e);
		}
		Block[] blocks = flow.basicBlocks();
		int numberOfBlocks = blocks.length;
		for (Block b: blocks) {
			if (b.position() == u) {
				bu = b;
			}
			/*
			 * not "else if" here, because u and v may be the same,
			 * i.e., loop containing only one block
			 */
			if (b.position() == v) {
				bv = b;
			}
			if (bu != null && bv != null) {
				break;
			}
		}
		/*
		 * Delete the tail of the back edge, and traverse the inverted
		 * CFG, starting from the head of the back edge. All reachable
		 * blocks are in this natural loop.
		 */
		Queue<Block> queue = new LinkedList<>();
		queue.add(bu);
		List<Integer> visited = new ArrayList<>();
		/* to prevent visiting v */
		visited.add(v);  
		while (queue.peek() != null) {
			Block b = queue.poll();
			visited.add(b.position());
			int numberOfPred = b.incomings();
			for (int i = 0; i < numberOfPred; i++) {
				Block pred = b.incoming(i);
				int pc = pred.position();
				if (!visited.contains(pc)) {
					queue.add(pred);
				}
			}
		}

		return visited;
	}

	public static String postDominator(String bbName) {
		if (postDomCache.containsKey(bbName))
			return postDomCache.get(bbName);
		BlockInfo bInfo = BlockInfo.valueOf(bbName);
		String methodName = bInfo.getFullMethodName();
		CtMethod ctMethod = getCtMethodByFullName(methodName);

		try {
			ControlFlow flow = new ControlFlow(ctMethod);
			Node[] postDomTree = flow.postDominatorTree();
			for (Node node : postDomTree) {
				String block = (new BlockInfo(methodName, node.block().position())).toString();
				Node parent = node.parent();
				if (parent == null) {
					postDomCache.put(block, null);
				} else {
					String parentBlock = (new BlockInfo(methodName, parent.block().position())).toString();
					postDomCache.put(block, parentBlock);
				}
			}

			Block[] blocks = flow.basicBlocks();
			int pc = bInfo.pc;
			for (Block bb: blocks) {
				int pos = bb.position();
				int endPos = pos + bb.length();
				if ((pc > pos) && (pc < endPos)) {
					String tmp = (new BlockInfo(methodName, pos)).toString();
					String parentBlock = postDomCache.get(tmp);
					postDomCache.put(bbName, parentBlock);
					break;
				}
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

		assert postDomCache.containsKey(bbName);
		return postDomCache.get(bbName);
	}

	private static final Map<String, String> postDomCache = new HashMap<>();

	public static boolean isInvokeOpcode(int opcode) {
		return (opcode >= 182) && (opcode <= 186);
	}
}
