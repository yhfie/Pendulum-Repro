package pendulum;

import pendulum.util.FileUtils;
import pendulum.util.AstUtils;

import edu.lu.uni.serval.tbar.utils.Checker;
import edu.lu.uni.serval.jdt.tree.ITree;
import edu.lu.uni.serval.jdt.tree.TreeUtils;

import java.io.File;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static java.util.stream.Collectors.groupingBy;
import static pendulum.util.AstUtils.*;
// Pass: {Patch parent; List<Op> operations; children = null; void addOp();}
// PLeaf extends PNode: {List<Pass> passes;}
// PNode: { List<PNode> children; PNode parent; }

// all: AbsNode

interface TreeElement {
	FixTree getTree();
}

interface InternalTreeElement extends TreeElement {
	void buildFrom(List<Location> candidates);
	void fix();
}

abstract class AbsTreeElement implements TreeElement {
	protected FixTree tree;

	AbsTreeElement(FixTree tree) {
		this.tree = tree;
	}

	@Override
	public FixTree getTree() {
		return tree;
	}
}

class FileNode extends AbsTreeElement implements InternalTreeElement, PassNodeParent {
	private List<ClassNode> children = new ArrayList<>();
	private File file = null;

	FileNode(FixTree tree) {
		super(tree);
	}

	@Override
	public void buildFrom(List<Location> locations) {
		file = locations.get(0).getSourceLoc().srcFile;

		Map<String, List<Location>> map = locations.stream()
				.collect(groupingBy(loc -> loc.getBlockInfo().className));
		for (String className: map.keySet()) {
			ClassNode n = new ClassNode(this);
			children.add(n);
			n.buildFrom(map.get(className));
		}
	}

	@Override
	public void fix() {
		for (ClassNode child: children) {
			child.fix();
		}

		importHelperClass();
	}

	void importHelperClass() {
		String fileStr = this.tree.currentVersion();

		Pattern pattern = Pattern.compile("package .*;");
		Matcher matcher = pattern.matcher(fileStr);

		int pos;
		if (matcher.find()) {
			pos = matcher.end();
		} else {
			pos = 0;
		}

		String insertion = (pos == 0? "" : "\n\n") + "import pendulum.safe.Safe;\n\n";

		Pass pass = new Pass(this);
		pass.addInsert(pos, insertion);
		this.tree.addPass(pass);
	}
}

class ClassNode extends AbsTreeElement implements InternalTreeElement {
	private FileNode parent;
	private List<MethodNode> children = new ArrayList<>();
	private String className = null;

	ClassNode(FileNode parent) {
		super(parent.getTree());
		this.parent = parent;
	}


	@Override
	public void buildFrom(List<Location> locations) {
		className = locations.get(0).getBlockInfo().className;

		Map<String, List<Location>> map = locations.stream()
				.collect(groupingBy(loc -> loc.getBlockInfo().getFullMethodName()));
		for (String methodName: map.keySet()) {
			MethodNode n = new MethodNode(this);
			children.add(n);
			n.buildFrom(map.get(methodName));
		}
	}

	@Override
	public void fix() {
		for (MethodNode child: children) {
			child.fix();
		}
	}
}

class MethodNode extends AbsTreeElement implements InternalTreeElement {
	private ClassNode parent;
	private List<CandidateNode> children = new ArrayList<>();
	private String fullMethodName = null;

	static class EarlyReturnVars {
		final String valueName;
		final String flagName;

		EarlyReturnVars(String valueName, String flagName) {
			this.valueName = valueName;
			this.flagName = flagName;
		}
	}

	private EarlyReturnVars earlyReturnVars = null;

	MethodNode(ClassNode parent) {
		super(parent.getTree());
		this.parent = parent;
	}

	ClassNode getParent() {
		return parent;
	}

	boolean hasEarlyReturnVars() {
		return earlyReturnVars != null;
	}

	EarlyReturnVars getOrAddEarlyReturnVars() {
		if (earlyReturnVars == null) {
			String valueName = String.format("_result");
			String flagName = String.format("_early");
			earlyReturnVars = new EarlyReturnVars(valueName, flagName);
		}
		return earlyReturnVars;
	}

	List<SourceLoc> getAndTopoSortSourceLocations(List<Location> locations) {
		Map<SourceLoc, List<SourceLoc>> adjList = new HashMap<>();
		List<SourceLoc> stmtList = new ArrayList<>();
		for (Location loc: locations) {
			SourceLoc sourceLoc = loc.getSourceLoc();

			LeakType type = sourceLoc.type;
			if (LeakType.isStatementType(type)) {
				stmtList.add(sourceLoc);
			}

			if (!adjList.containsKey(sourceLoc)) {
				adjList.put(sourceLoc, new ArrayList<>());
			}
			SourceLoc parent = sourceLoc.getParent();
			while (parent != null) {
				if (!adjList.containsKey(parent)) {
					adjList.put(parent, new ArrayList<>());
				}
				adjList.get(parent).add(sourceLoc);

				sourceLoc = parent;
				parent = parent.getParent();

				type = sourceLoc.type;
				if (LeakType.isStatementType(type)) {
					stmtList.add(sourceLoc);
				}
			}
		}

		int n = stmtList.size();
		stmtList.sort(Comparator.comparingInt(loc -> loc.endPos));
		for (int i = 0; i < n - 1; i++) {
			SourceLoc inner = stmtList.get(i);
			SourceLoc outer = stmtList.get(i + 1);
			adjList.get(outer).add(inner);
		}

		List<SourceLoc> topoList = new ArrayList<>();

		while (true) {
			List<SourceLoc> removedLocs = new ArrayList<>();
			Iterator<Map.Entry<SourceLoc, List<SourceLoc>>> it = adjList.entrySet().iterator();
			while (it.hasNext()) {
				Map.Entry<SourceLoc, List<SourceLoc>> entry = it.next();
				SourceLoc sLoc = entry.getKey();
				if (entry.getValue().isEmpty()) {
					removedLocs.add(sLoc);
					it.remove();
				}
			}

			for (SourceLoc sLoc: removedLocs) {
				for (List<SourceLoc> list: adjList.values()) {
					list.remove(sLoc);
				}
			}

			if (removedLocs.isEmpty()) {
				break;
			}
			// For two locations nested together (e.g., IF in another IF), this will put the
			// inner location first.
			// For two non-nested locations, this will follow their order in source code.
			// Following this order, we never overwrite the locations that haven't yet been fixed.
			removedLocs.sort(Comparator.comparingInt(loc -> loc.endPos));
			topoList.addAll(removedLocs);
		}

		return topoList;
	}

	@Override
	public void buildFrom(List<Location> locations) {
		fullMethodName = locations.get(0).getBlockInfo().getFullMethodName();
		List<SourceLoc> sourceLocs = getAndTopoSortSourceLocations(locations);

		for (SourceLoc sLoc: sourceLocs) {
			CandidateNode n = new CandidateNode(this);
			children.add(n);
			n.buildFrom(sLoc);
		}
	}

	@Override
	public void fix() {
		for (CandidateNode child: children) {
			child.fix();
		}
	}
}

interface PassNodeParent extends TreeElement {
	default boolean isCandidateNode() { return false; }
	default boolean isPassNode() { return false; }
}

interface PassNodeChild extends TreeElement {
	default boolean isPassNode() { return false; }
	default boolean isBarePass() { return false; }
}

class CandidateNode
		extends AbsTreeElement implements PassNodeParent/*, InternalTreeElement*/ {
	private MethodNode parent;
	private List<PassNodeChild> children = new ArrayList<>();
	private SourceLoc sourceLoc = null;

	CandidateNode(MethodNode parent) {
		super(parent.getTree());
		this.parent = parent;
	}

	MethodNode getParent() {
		return parent;
	}

	void addPassNode(PassNode n) {
		children.add(n);
	}

	void addBarePass(Pass p) {
		children.add(p);
		this.tree.addPass(p);
	}

	@Override
	public boolean isCandidateNode() { return true; }

	public void buildFrom(SourceLoc sourceLoc) {
		this.sourceLoc = sourceLoc;
	}

	public void fix() {
		FixTree.Spacetime st = FixTree.Spacetime.of(0, sourceLoc.pos);
		switch (sourceLoc.type) {
			case NOT:
				fixPrefixOperator(st);
				break;
			case CONDITIONAL_AND:
			case CONDITIONAL_OR:
			case GREATER:
			case LESS:
			case GREATER_EQUALS:
			case LESS_EQUALS:
			case EQUALS:
			case NOT_EQUALS:
				fixInfixOperator(st);
				break;
			case TERNARY:
				fixTernaryOperator(st);
				break;
			case IF:
				fixIfStatement(st);
				break;
			case FOR:
			case WHILE:
			case DO_WHILE:
				fixLoopStatement(st);
				break;
			default:
				throw new RuntimeException();
		}
	}

	void fixPrefixOperator(FixTree.Spacetime st) {
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree prefixExpr = AstUtils.subtreeAt(ast, pos);
		ITree subExpr = prefixExpr.getChild(1);

		assert sourceLoc.type == LeakType.NOT;
		String helper = LeakType.getHelperName(sourceLoc.type);

		String repl = String.format("%s(%s)", helper, astStr(subExpr, fileStr));
		Pass pass = new Pass(this);
		pass.addReplace(prefixExpr.getPos(), prefixExpr.getEndPos(), repl);
		addBarePass(pass);
	}

	void fixInfixOperator(FixTree.Spacetime st) {
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree op = AstUtils.subtreeAt(ast, pos);
		ITree infixExpr = op.getParent();
		ITree lhs = infixExpr.getChild(0);
		ITree rhs = infixExpr.getChild(2);

		String helper = LeakType.getHelperName(sourceLoc.type);

		String repl = String.format("%s(%s, %s)", helper, astStr(lhs, fileStr), astStr(rhs, fileStr));
		Pass pass = new Pass(this);
		pass.addReplace(infixExpr.getPos(), infixExpr.getEndPos(), repl);
		addBarePass(pass);
	}

	void fixTernaryOperator(FixTree.Spacetime st) {
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree ternaryExpr = AstUtils.subtreeAt(ast, pos);
		ITree cond = ternaryExpr.getChild(0);
		ITree value1 = ternaryExpr.getChild(1);
		ITree value2 = ternaryExpr.getChild(2);

		assert sourceLoc.type == LeakType.TERNARY;
		String helper = LeakType.getHelperName(sourceLoc.type);

		String repl = String.format("%s(%s, %s, %s)", helper,
				astStr(cond, fileStr), astStr(value1, fileStr), astStr(value2, fileStr));
		Pass pass = new Pass(this);
		pass.addReplace(ternaryExpr.getPos(), ternaryExpr.getEndPos(), repl);
		addBarePass(pass);
	}

	void fixIfStatement(FixTree.Spacetime st) {
		Pass pass1 = new Pass(this);
		hoistConditionOfIf(st, pass1);
		addBarePass(pass1);

		Pass pass2 = new Pass(this);
		fixEarlyReturnOfIf(st, pass2);
		addBarePass(pass2);

		Pass pass3 = new Pass(this);
		fixBreakOfIf(st, pass3);
		addBarePass(pass3);

		Pass pass6 = new Pass(this);
		fixContinueOfIf(st, pass6);
		addBarePass(pass6);

		Pass pass7 = new Pass(this);
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree ifAst = AstUtils.subtreeAt(ast, pos);
		ITree methodAst = ifAst.getParent();
		while (!Checker.isMethodDeclaration(methodAst.getType())) {
			methodAst = methodAst.getParent();
		}
		FixTree.Spacetime methodSt = FixTree.Spacetime.of(this.tree.getTime(), methodAst.getPos());
		addInitialValuesInMethod(methodSt, pass7);
		addBarePass(pass7);

		Pass pass4 = new Pass(this);
		rewriteAssignmentsOfIf(st, pass4);
		addBarePass(pass4);

		Pass pass5 = new Pass(this);
		removeKeywordsOfIf(st, pass5);
		addBarePass(pass5);

	}

	void fixLoopStatement(FixTree.Spacetime st) {
		Pass pass1 = new Pass(this);
		addModuloForLoopVariables(st, pass1);
		addBarePass(pass1);

		PassNode pn = new PassNode(this);
		addPassNode(pn);
		addConditionalBreakToLoop(st, pn);
	}

	private void addModuloForLoopVariables(FixTree.Spacetime st, Pass pass) {
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree loopAst = AstUtils.subtreeAt(ast, pos);

		int loopType = loopAst.getType();
		// : we now only add modulo for a simple case:
		//     in a for statement, the check is like `i < n`.
		//     We then change all references of `i` to `i % n`.


		// TODO: implement general cases, probably with the help of solvers
		// add modulo
		ITree check = null;
		if (Checker.isForStatement(loopType)) {
			String[] tmp = loopAst.getLabel().split(";");
			if (tmp.length == 3) {
				int index = tmp[0].equals("[]") ? 0 : 1;
				check = loopAst.getChild(index);
			}
		}
		String loopVarName = null;
		String loopVarBound = null;
		if (check != null) {
			int type = check.getType();
			if (Checker.isMethodInvocation(type)) {
				if (check.getLabel().startsWith("Safe.lt")) {
					ITree invocation = check.getChild(1);
					loopVarName = invocation.getChild(0).getLabel();
					loopVarBound = invocation.getChild(1).getLabel();
				}
			}
		}
		if (loopVarName != null) {
			String loopVarUse = String.format("(%s %% %s)", loopVarName, loopVarBound);
			List<ITree> children = loopAst.getChildren();
			for (ITree child: children) {
				if (!Checker.isStatement(child.getType())) {
					continue;
				}

				Iterable<ITree> subtrees = child.breadthFirst();
				for (ITree t: subtrees) {
					if (t.getPos() <= check.getPos()) {
						continue;
					}

					int type = t.getType();
					if (!(Checker.isSimpleName(type) && t.getLabel().equals(loopVarName))) {
						continue;
					}

					ITree parent = t.getParent();
					int parentType = parent.getType();
					// if this is a use of loop variable
					if (Checker.isPrefixExpression(parentType) || Checker.isPostfixExpression(parentType) ||
							(Checker.isAssignment(parentType) && (parent.getChild(0).getPos() == t.getPos()))) {
						continue;
					}

					pass.addReplace(t.getPos(), t.getEndPos(), loopVarUse);
				}
			}
		}
	}

	private void addConditionalBreakToLoop(FixTree.Spacetime st, PassNode pn) {
		String ub = getLoopUpperBound();

		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree loopAst = AstUtils.subtreeAt(ast, pos);
		int loopType = loopAst.getType();

		Pass pass1 = new Pass(pn);

		List<ITree> children = loopAst.getChildren();
		int nChildren = children.size();

		String counterName = "_ub" + pos;

		String condition = null;

		if (Checker.isForStatement(loopType)) {
			String[] tmp = loopAst.getLabel().split(";");
			boolean hasInit = !tmp[0].equals("[]");
			boolean hasCond = (tmp.length == 3);
			int initPos = fileStr.indexOf('(', pos) + 1;
			int condPos = fileStr.indexOf(';', initPos) + 1;
			String loopIndent = detectIndent(loopAst, fileStr);
			String initStr = String.format("int %s = %s;\n%s", counterName, ub, loopIndent);
			String condStr = String.format(" --%s > 0", counterName);
			if (hasCond) {
				int condIndex = hasInit ? 1 : 0;
				condition = loopAst.getChild(condIndex).getLabel();

				pass1.addInsert(pos, initStr);

				int condEndPos = fileStr.indexOf(';', condPos);
				pass1.addReplace(condPos, condEndPos, condStr);
			} else {
				pass1.addInsert(initPos, initStr);
				pass1.addInsert(condPos, condStr);
			}
		} else {
			int index = -1;
			if (Checker.isWhileStatement(loopType)) {
				index = 0;
			} else if (Checker.isDoStatement(loopType)) {
				index = nChildren - 1;
			}
			ITree condAst = loopAst.getChild(index);

			String tmp = astStr(condAst, fileStr);
			if (!tmp.equals("true")) {
				condition = tmp;
			}

			String indent = detectIndent(loopAst, fileStr);
			String insertion = String.format("int %s = %s;\n%s", counterName, ub, indent);
			pass1.addInsert(pos, insertion);

			String repl = String.format("--%s > 0", counterName);
			pass1.addReplace(condAst.getPos(), condAst.getEndPos(), repl);
		}

		if (condition == null) {
			return;
		}

		ITree firstStmt = null;
		int firstStmtIndex = 0;
		for (ITree child: children) {
			if (Checker.isStatement(child.getType())) {
				firstStmt = child;
				break;
			}
			firstStmtIndex++;
		}

		boolean addBraces = true;
		if (Checker.isForStatement(loopType) || Checker.isWhileStatement(loopType)) {
			if (firstStmtIndex < (nChildren - 1)) {
				addBraces = false;
			}
		} else if (Checker.isDoStatement(loopType)) {
			if (nChildren > 2) {
				addBraces = false;
			}
		}

		String indent = detectIndent(firstStmt, fileStr);
		String guardName = "_guard" + pos;
		String helper = LeakType.getHelperName(LeakType.NOT);
		int firstStmtPos = firstStmt.getPos();

		StringBuilder builder = new StringBuilder();
		if (addBraces) {
			builder.append("{\n").append(indent);
		}
		builder.append("boolean ").append(guardName).append(" = ").append(helper).append("(").append(condition)
				.append(");\n");
		builder.append(indent).append("if (").append(guardName).append(") {\n");
		builder.append(indent).append("  ").append("break;\n");
		builder.append(indent).append("}\n");
		builder.append(indent);

		pass1.addInsert(firstStmtPos, builder.toString());

		if (addBraces) {
			String loopIndent = detectIndent(loopAst, fileStr);
			pass1.addInsert(firstStmt.getEndPos(), "\n" + loopIndent + "}");
		}

		pn.addBarePass(pass1);

		fileStr = this.tree.currentVersion();
		ast = AstUtils.fileStrAst(fileStr);
		pos = this.tree.transformSt(st);
		int ifPos = fileStr.indexOf("if (" + guardName, pos);
		FixTree.Spacetime ifSt = FixTree.Spacetime.of(this.tree.getTime(), ifPos);
		fixIfStatement(ifSt);
	}

	private String getLoopUpperBound() {
		Scanner scanner = new Scanner(System.in);
		System.out.printf(">> What is a secret-independent upper bound for the loop: %s?\n<< ", sourceLoc);
		String ub = scanner.nextLine();
		System.out.println();
		return ub;
	}

	private void hoistConditionOfIf(FixTree.Spacetime st, Pass pass) {
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree ifAst = AstUtils.subtreeAt(ast, pos);
		ITree condition = ifAst.getChild(0);
		if (Checker.isSimpleName(condition.getType())) {
			return;
		}
		String varName = String.format("_b%d", sourceLoc.pos);
		String indent = AstUtils.detectIndent(ifAst, fileStr);
		String insertion = String.format("boolean %s = %s;\n%s", varName, astStr(condition, fileStr), indent);

		int statementCount = 0;
		ITree parent = ifAst.getParent();
		List<ITree> siblings = parent.getChildren();
		for (ITree sibling: siblings) {
			if (Checker.isStatement(sibling.getType())) {
				statementCount++;
			}
		}

		String parentIndent = AstUtils.detectIndent(parent, fileStr);
		boolean addBraces = (statementCount == 1);
		String openingBrace = "\n" + parentIndent + "{\n" + indent;
		if (addBraces) {
			insertion = openingBrace + insertion;
		}

		pass.addInsert(ifAst.getPos(), insertion);
		pass.addReplace(condition.getPos(), condition.getEndPos(), varName);

		if (addBraces) {
			pass.addInsert(parent.getEndPos(), "\n" + parentIndent + "}\n");
		}
	}

	@SuppressWarnings("fallthrough")
	private String dummyValue(String type) {
		String value = null;
		switch (type) {
			case "byte":
			case "short":
			case "char":
			case "int":
			case "long":
			case "float":
			case "double":
				value = "0";
				break;
			case "boolean":
				value = "false";
				break;
			default:
				value = "null";
				break;
		}
		return value;
	}

	private void fixEarlyReturnOfIf(FixTree.Spacetime st, Pass pass) {
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree ifAst = AstUtils.subtreeAt(ast, pos);

		TreeUtils.computeDepth(ast);
		List<ITree> returnAsts = new ArrayList<>();
		int ifDepth = ifAst.getDepth();
		for (ITree t: ifAst.preOrder()) {
			if ((t.getDepth() == (ifDepth + 2)) && Checker.isReturnStatement(t.getType())) {
				returnAsts.add(t);
			}
		}
		if (returnAsts.isEmpty()) {
			return;
		}

		// If we haven't got `isEarlyReturn` and `returnValue`, add them.
		MethodNode methodNode = getParent();
		boolean hasVars = methodNode.hasEarlyReturnVars();
		MethodNode.EarlyReturnVars vars = methodNode.getOrAddEarlyReturnVars();
		ITree methodAst = ifAst;
		while (!Checker.isMethodDeclaration(methodAst.getType())) {
			methodAst = methodAst.getParent();
		}

		if (!hasVars) {
			ITree firstStmtAst = null;
			List<ITree> methodSubTrees = methodAst.getChildren();
			for (ITree t: methodSubTrees) {
				if (Checker.isStatement(t.getType())) {
					firstStmtAst = t;
					break;
				}
			}
			String returnType = AstUtils.getReturnType(methodAst);
			String initValue = dummyValue(returnType);
			String indent = AstUtils.detectIndent(firstStmtAst, fileStr);
			String insertion = String.format(
					"%s %s = %s;\n%s" + "boolean %s = false;\n%s",
					returnType, vars.valueName, initValue,
					indent, vars.flagName, indent);
			pass.addInsert(firstStmtAst.getPos(), insertion);
		}

		// Replace return statements with assignment to `returnValue`.
		String helper = LeakType.getHelperName(LeakType.TERNARY);

		for (ITree t: returnAsts) {
			String indent = AstUtils.detectIndent(t, fileStr);
			String repl = String.format("{\n%s%s = %s(%s, %s, %s);\n%s%s = true;\n%s}",
					indent, vars.valueName, helper, vars.flagName, vars.valueName,
					astStr(t.getChild(0), fileStr), indent,
					vars.flagName, indent);
			pass.addReplace(t.getPos(), t.getEndPos(), repl);
		}

		// Rewrite other return statements in this method, possibly add one return at the end.
		ITree outerLoop = null;
		for (ITree t = ifAst; ; t = t.getParent()) {
			int type = t.getType();
			if (Checker.isMethodDeclaration(type)) {
				break;
			}

			if (Checker.isForStatement(type) || Checker.isWhileStatement(type) || Checker.isDoStatement(type)) {
				outerLoop = t;
			}
		}
		int afterPos = outerLoop == null ? ifAst.getPos() : outerLoop.getPos();

		Iterable<ITree> subtrees = methodAst.preOrder();
		boolean needAppendReturn = true;

		List<Integer> returnPositions = new ArrayList<>(2);
		for (ITree returnAst: returnAsts) {
			returnPositions.add(returnAst.getPos());
		}

		for (ITree t: subtrees) {
			if (!Checker.isReturnStatement(t.getType())) {
				continue;
			}
			if (returnPositions.contains(t.getPos())) {
				continue;
			}
			if (t.getPos() < afterPos) {
				continue;
			}
			ITree exprAst = t.getChild(0);
			String expr = fileStr.substring(
					exprAst.getPos(), exprAst.getEndPos());
			String repl = String.format("%s(%s, %s, %s)",
					helper, vars.flagName, vars.valueName, expr);
			pass.addReplace(exprAst.getPos(), exprAst.getEndPos(), repl);

			if (t.getParent() == methodAst) {
				needAppendReturn = false;
			}
		}

		if (needAppendReturn) {
			List<ITree> children = methodAst.getChildren();
			ITree lastStmtAst = children.get(children.size() - 1);
			String indent = AstUtils.detectIndent(lastStmtAst, fileStr);
			String insertion = String.format("\n%sreturn %s;", indent, vars.valueName);
			pass.addInsert(lastStmtAst.getEndPos(), insertion);
		}
	}

	private void addInitialValuesInMethod(FixTree.Spacetime st, Pass pass) {
		int pos = this.tree.transformSt(st);
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		ITree method = AstUtils.subtreeAt(ast, pos);

		Iterable<ITree> subtrees = method.breadthFirst();
		for (ITree t: subtrees) {
			if (!Checker.isVariableDeclarationFragment(t.getType())) {
				continue;
			}

			List<ITree> children = t.getChildren();
			if (children.size() > 1) {
				continue;
			}

			String varType = t.getParent().getChild(0).getLabel();
			String initValue = dummyValue(varType);
			pass.addInsert(children.get(0).getEndPos(), " = " + initValue);
		}
	}

	private void rewriteAssignmentsOfIf(FixTree.Spacetime st, Pass pass) {
		int pos = this.tree.transformSt(st);
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		ITree ifAst = AstUtils.subtreeAt(ast, pos);

		Set<String> declaredVars = new HashSet<>();

		List<ITree> ifChildren = ifAst.getChildren();
		ITree thenBodyAst = ifChildren.get(1);
		FixTree.Spacetime thenSt = FixTree.Spacetime.of(
				this.tree.getTime(), thenBodyAst.getPos());
		assert Checker.isSimpleName(ifChildren.get(0).getType());
		String condVar = AstUtils.astStr(ifChildren.get(0), fileStr);
		rewriteAssignmentsAt(thenSt, declaredVars, true, condVar, pass, null);

		if (ifChildren.size() == 3) {
			ITree elseBodyAst = ifChildren.get(2);
			FixTree.Spacetime elseSt = FixTree.Spacetime.of(
					this.tree.getTime(), elseBodyAst.getPos());
			rewriteAssignmentsAt(elseSt, declaredVars, false, condVar, pass, null);
		}
	}

	private void rewriteAssignmentsAt(
			FixTree.Spacetime st, Set<String> declaredVars, boolean isThen, String condVar, Pass pass,
			FixTree.Spacetime afterSt) {

		class DeclarationStack {
			final Stack<Set<String>> stack = new Stack<>();

			void pushScope(Set<String> varNames) {
				stack.push(varNames);
			}

			void pushScope() {
				pushScope(new HashSet<>());
			}

			Set<String> popScope() {
//				System.out.println("pop scope: " + stack.peek());
				return stack.pop();
			}

			boolean hasVariable(String varName) {
				for (Set<String> scope: stack) {
					if (scope.contains(varName)) {
						return true;
					}
				}
				return false;
			}

			void addVariable(String varName) {
				stack.peek().add(varName);
			}
		}

		int afterPos = (afterSt == null) ? -1 : this.tree.transformSt(afterSt);

		int pos = this.tree.transformSt(st);
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		TreeUtils.computeDepth(ast);

		ITree blockAst = AstUtils.subtreeAt(ast, pos);

		ITree condAst = blockAst.getParent().getChild(0);
		assert Checker.isSimpleName(condAst.getType());
//		String condVar = fileStr.substring(condAst.getPos(), condAst.getEndPos());

		Iterable<ITree> preOrder = blockAst.preOrder();

		DeclarationStack declStack = new DeclarationStack();
		declStack.pushScope(declaredVars);

		Stack<Integer> depthStack = new Stack<>();
		depthStack.push(blockAst.getDepth());
		for (ITree subtree: preOrder) {
			int type = subtree.getType();

			if (subtree.getPos() != blockAst.getPos()) {
				if (subtree.getDepth() <= depthStack.peek()) {
					declStack.popScope();
					depthStack.pop();
				}
				if (Checker.isBlock(type) || Checker.isForStatement(type)) {
					declStack.pushScope();
					depthStack.push(subtree.getDepth());
				}
			}

			if (Checker.isVariableDeclarationFragment(type)) {
				declStack.addVariable(subtree.getChild(0).getLabel());
			} else if (Checker.isSingleVariableDeclaration(type)) {
				declStack.addVariable(subtree.getChild(1).getLabel());
			}

			if (Checker.isBlock(type) || Checker.withBlockStatement(type) || !Checker.isStatement(type)) {
				continue;
			}

			if (subtree.getPos() < afterPos) {
				continue;
			}

			if (Checker.isExpressionStatement(type)) {
				ITree expr = subtree.getChild(0);
				int exprType = expr.getType();
				String value = null;
				String lhs = null;
				if (Checker.isAssignment(exprType)) {
					lhs = astStr(expr.getChild(0), fileStr);

					String rhs = astStr(expr.getChild(2), fileStr);
					String op = expr.getChild(1).getLabel();

					if (op.equals("=")) {
						value = rhs;
					} else {  // +=, -=, &=, ...
						String subOp = op.substring( 0, op.length() - 1);
						value = String.format("(%s) %s (%s)", lhs, subOp, rhs);
					}
				} else if (Checker.isPrefixExpression(exprType)) {
					String op = expr.getChild(0).getLabel();
					lhs = expr.getChild(1).getLabel();
					value = op.equals("--") ? (lhs + " - 1") : op.equals("++") ? (lhs + " + 1") : null;
				} else if (Checker.isPostfixExpression(exprType)) {
					String op = expr.getChild(1).getLabel();
					lhs = expr.getChild(0).getLabel();
					value = op.equals("--") ? (lhs + " - 1") : op.equals("++") ? (lhs + " + 1") : null;
				}

				if (declStack.hasVariable(lhs)) {
					continue;
				}

				if (value != null) {
					String helper = LeakType.getHelperName(LeakType.TERNARY);
					String s = String.format("%s = %s(%s, %s, %s);", lhs, helper,
							condVar, isThen ? value : lhs, isThen ? lhs : value);
					pass.addReplace(subtree.getPos(), subtree.getEndPos(), s);
				}
			} else if (Checker.isVariableDeclarationStatement(type)) {
				List<ITree> children = subtree.getChildren();

				ITree typeAst = null;
				int i0 = 0;
				for (ITree child: children) {
					if (!Checker.isModifier(child.getType())) {
						typeAst = child;
						break;
					}
					i0++;
				}

				String declType = AstUtils.astStr(typeAst, fileStr);

				int newVarCount = 0;
				List<String> stmtsForDeclaredVars = new ArrayList<>();

				StringBuilder builder = new StringBuilder();
				builder.append(fileStr, subtree.getPos(), typeAst.getEndPos()).append(" ");
				int n = children.size();
				for (int i = i0 + 1; i < n; i++) {
					ITree fragment = children.get(i);
					List<ITree> fragChildren = fragment.getChildren();

					ITree simpleName = fragChildren.get(0);
					boolean isArray = fileStr.substring(simpleName.getEndPos(), subtree.getEndPos())
							.matches("\\s*\\[.*");

					String varName = astStr(simpleName, fileStr);
					String varType = declType + (isArray ? "[]" : "");

					String initValue = (fragChildren.size() == 1) ?
							dummyValue(varType) : astStr(fragChildren.get(1), fileStr);
					if (declStack.hasVariable(varName)) {
						/*
						 * : this assumes that the same variable name isn't given
						 * two different types in the two branches. Normally no one
						 * would do that. But if that does happen, we have to
						 * FIXME: rename this variable in the "else" branch.
						 */
						stmtsForDeclaredVars.add(String.format("%s = %s;", varName, initValue));
					} else {
						newVarCount++;
						if (newVarCount > 1) {
							builder.append(", ");
						}
						String varDecl = varName + (isArray ? "[]" : "");
						builder.append(String.format("%s = %s", varDecl, initValue));
					}
				}
				builder.append(";");

				String indent = AstUtils.detectIndent(subtree, fileStr);
				String delimiter = "\n" + indent;
				String newStatements = String.join(delimiter, stmtsForDeclaredVars);
				if (newVarCount > 0) {
					builder.append("\n").append(indent).append(newStatements);
					pass.addReplace(subtree.getPos(), subtree.getEndPos(), builder.toString());
				} else {
					pass.addReplace(subtree.getPos(), subtree.getEndPos(), newStatements);
				}
			}
		}
	}

	private void fixBreakOfIf(FixTree.Spacetime st, Pass pass) {
		int pos = this.tree.transformSt(st);
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		ITree ifStatement = AstUtils.subtreeAt(ast, pos);

		List<ITree> breakStatements = new ArrayList<>();
		int ifDepth = ifStatement.getDepth();
		for (ITree t: ifStatement.preOrder()) {
			if ((t.getDepth() == (ifDepth + 2)) && Checker.isBreakStatement(t.getType())) {
				breakStatements.add(t);
			}
		}
		// : does anyone put a `break` in both branches?
		assert breakStatements.size() < 2;

		if (breakStatements.isEmpty()) {
			return;
		}

		String varName = String.format("_break%d", sourceLoc.pos);

		ITree loop = ifStatement;
		while (true) {
			loop = loop.getParent();
			int type = loop.getType();
			if (Checker.isForStatement(type) || Checker.isWhileStatement(type) || Checker.isDoStatement(type)) {
				break;
			}
		}

		String indent = AstUtils.detectIndent(loop, fileStr);
		String insertion = String.format("boolean %s = false;\n%s", varName, indent);
		pass.addInsert(loop.getPos(), insertion);

		ITree breakStatement = breakStatements.get(0);
		String repl = String.format("%s = true;", varName);
		pass.addReplace(breakStatement.getPos(), breakStatement.getEndPos(), repl);

		FixTree.Spacetime loopSt = FixTree.Spacetime.of(this.tree.getTime(), loop.getPos());
		Set<String> declaredVars = new HashSet<>();
		declaredVars.add(varName);
		rewriteAssignmentsAt(loopSt, declaredVars, false, varName, pass, null);
	}

	private void fixContinueOfIf(FixTree.Spacetime st, Pass pass) {
		int pos = this.tree.transformSt(st);
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		ITree ifStatement = AstUtils.subtreeAt(ast, pos);

		List<ITree> continueStatements = new ArrayList<>();
		int ifDepth = ifStatement.getDepth();
		for (ITree t: ifStatement.preOrder()) {
			if ((t.getDepth() == (ifDepth + 2)) && Checker.isContinueStatement(t.getType())) {
				continueStatements.add(t);
			}
		}
		// : does anyone put a `continue` in both branches?
		assert continueStatements.size() < 2;

		if (continueStatements.isEmpty()) {
			return;
		}

		String varName = String.format("_continue%d", sourceLoc.pos);

		ITree loop = ifStatement;
		while (true) {
			loop = loop.getParent();
			int type = loop.getType();
			if (Checker.isForStatement(type) || Checker.isWhileStatement(type) || Checker.isDoStatement(type)) {
				break;
			}
		}

		String indent = AstUtils.detectIndent(ifStatement, fileStr);
		String insertion = String.format("boolean %s = false;\n%s", varName, indent);
		pass.addInsert(ifStatement.getPos(), insertion);

		ITree continueStatement = continueStatements.get(0);
		String repl = String.format("%s = true;", varName);
		pass.addReplace(continueStatement.getPos(), continueStatement.getEndPos(), repl);

		FixTree.Spacetime loopSt = FixTree.Spacetime.of(this.tree.getTime(), loop.getPos());
		FixTree.Spacetime afterSt = FixTree.Spacetime.of(this.tree.getTime(), ifStatement.getEndPos());
		rewriteAssignmentsAt(loopSt, new HashSet<>(), false, varName, pass, afterSt);
	}

	void removeKeywordsOfIf(FixTree.Spacetime st, Pass pass) {
		String fileStr = this.tree.currentVersion();
		ITree ast = AstUtils.fileStrAst(fileStr);
		int pos = this.tree.transformSt(st);
		ITree ifStatement = AstUtils.subtreeAt(ast, pos);

		String indent = AstUtils.detectIndent(ifStatement, fileStr);

		ITree thenBody = ifStatement.getChild(1);
		List<ITree> children = thenBody.getChildren();

		if (!children.isEmpty()) {
			int start = children.get(0).getPos();
			int end = children.get(children.size() - 1).getEndPos();
			String s = fileStr.substring(start, end).trim();

			String bodyIndent = AstUtils.detectIndent(children.get(0), fileStr);
			int bodyIndentLen = bodyIndent.length();
			if (bodyIndent.trim().length() > 0) {
				// if first statement is in the same line with `if`, we don't
				// care to have good indentation.
				pass.addReplace(ifStatement.getPos(), thenBody.getEndPos(), s + "\n");
			} else {
				StringBuilder builder = new StringBuilder();
				String[] lines = s.split("\n");
				for (int i = 0; i < lines.length; i++) {
					String line = lines[i];
					if (i > 0) {
						builder.append(indent);
						String tmp = line.startsWith(bodyIndent) ? line.substring(bodyIndentLen) : (indent + line.trim());
						builder.append(tmp);
					} else {
						builder.append(line);
					}
					builder.append("\n");
				}
				pass.addReplace(ifStatement.getPos(), thenBody.getEndPos(), builder.toString());
			}
		} else {
			pass.addReplace(ifStatement.getPos(), thenBody.getEndPos(), "\n");
		}

		if (ifStatement.getChildren().size() == 2) {
			return;
		}

		ITree elseBody = ifStatement.getChild(2);
		children = elseBody.getChildren();

		if (!children.isEmpty()) {
			int start = children.get(0).getPos();
			int end = children.get(children.size() - 1).getEndPos();
			String s = fileStr.substring(start, end).trim();

			String bodyIndent = AstUtils.detectIndent(children.get(0), fileStr);
			int bodyIndentLen = bodyIndent.length();
			if (bodyIndent.trim().length() > 0) {
				// if first statement is in the same line with `if`, we don't
				// care to have good indentation.
				pass.addReplace(thenBody.getEndPos(), ifStatement.getEndPos(), s + "\n");
			} else {
				StringBuilder builder = new StringBuilder();
				String[] lines = s.split("\n");
				for (int i = 0; i < lines.length; i++) {
					String line = lines[i];
					if (i > 0) {
						builder.append(indent);
					}
					String tmp = line.startsWith(bodyIndent) ? line.substring(bodyIndentLen) : (indent + line.trim());
					builder.append(tmp);
					builder.append("\n");
				}
				pass.addReplace(thenBody.getEndPos(), ifStatement.getEndPos(), builder.toString());
			}
		} else {
			pass.addReplace(thenBody.getEndPos(), ifStatement.getEndPos(), "\n");
		}
	}
}

class PassNode extends AbsTreeElement implements PassNodeParent, PassNodeChild {
	private PassNodeParent parent;
	private List<PassNodeChild> children = new ArrayList<>();

	PassNode(PassNodeParent parent) {
		super(parent.getTree());
		this.parent = parent;
	}

	void addBarePass(Pass p) {
		children.add(p);
		this.tree.addPass(p);
	}

	void addPassNode(PassNode n) {
		children.add(n);
	}

	@Override
	public boolean isPassNode() { return true; }
}

class Pass extends AbsTreeElement implements PassNodeChild {
	static class Op {
		final int startPos;
		final int endPos;
		final String fixStr;

		Op(int startPos, int endPos, String fixStr) {
			this.startPos = startPos;
			this.endPos = endPos;
			this.fixStr = fixStr;
		}

		@Override
		public String toString() {
			String s = String.format("Op(%d, %d, %s)",
					startPos, endPos, fixStr);
			return s;
		}
	}

	private PassNodeParent parent;
	private List<Op> operations = new ArrayList<>();

	Pass(PassNodeParent parent) {
		super(parent.getTree());
		this.parent = parent;
	}

	@Override
	public boolean isBarePass() { return true; }

	void addInsert(int pos, String s) {
		assert pos >= 0;
		Op op = new Op(pos, pos, s);
		addOp(op);
	}

	void addReplace(int startPos, int endPos, String s) {
		assert startPos >= 0;
		assert endPos > startPos;
		Op op = new Op(startPos, endPos, s);
		addOp(op);
	}

	private void addOp(Op op) {
		int i = 0;
		int n = operations.size();
		for ( ; i < n; i++) {
			if (operations.get(i).startPos >= op.startPos) {
				break;
			}
		}
		if (i > 0) {
			Op predcessor = operations.get(i - 1);
			assert predcessor.endPos <= op.startPos;
		}
		if (i < n) {
			Op successor = operations.get(i);
			assert successor.startPos >= op.endPos;
		}
		operations.add(i, op);
	}

	String applyTo(String s) {
		int i = 0;
		StringBuilder builder = new StringBuilder();
		for (Op op: operations) {
			builder.append(s.substring(i, op.startPos));
			builder.append(op.fixStr);
			i = op.endPos;
		}
		builder.append(s.substring(i));
		return builder.toString();
	}

	int computeNewPos(int pos) {
		int result = pos;
		int i = 0;
		int n = operations.size();
		for ( ; i < n; i++) {
			Op op = operations.get(i);
			if (op.endPos <= pos) {
				result += (op.fixStr.length() - (op.endPos - op.startPos));
			} else {
				break;
			}
		}
		if (i < n) {
			assert operations.get(i).startPos > pos: operations.get(i).toString();
		}
		return result;
	}
}

class FixTree {
	static class Spacetime {
		int time;  // number of leaf nodes born before this
		int pos;

		private Spacetime(int time, int pos) {
			this.time = time;
			this.pos = pos;
		}

		static Spacetime of(int time, int pos) {
			return new Spacetime(time, pos);
		}
	}

	File file;
	String fileStr;
	FileNode root;
	List<Pass> passes = new ArrayList<>();
	String packageName;

	FixTree(File file, List<Location> locations) {
		this.file = file;
		this.fileStr = FileUtils.readFile(file);
		this.root = new FileNode(this);
		this.root.buildFrom(locations);

		String className = locations.get(0).getBlockInfo().className;
		int index = className.lastIndexOf('.');
		this.packageName = (index == -1) ? "" : className.substring(0, index);
	}

	void fix() {
		root.fix();
	}

	void addPass(Pass p) {
		passes.add(p);
	}

	int getTime() {
		return passes.size();
	}

	int transformSt(Spacetime st, int newTime) {
		int pos = st.pos;
		for (int i = st.time; i < newTime; i++) {
			pos = passes.get(i).computeNewPos(pos);
		}
		return pos;
	}

	int transformSt(Spacetime st) {
		return transformSt(st, getTime());
	}

	String versionAt(int time) {
		String s = fileStr;
		for (int i = 0; i < time; i++) {
			s = passes.get(i).applyTo(s);
		}
		return s;
	}

	String currentVersion() {
		return versionAt(getTime());
	}
}

public class FixForest {
	List<FixTree> forest;
	String outDir;

	FixForest(List<Location> locations, String outDir) {
		Map<File, List<Location>> map = locations.stream().collect(groupingBy(loc -> loc.sourceLoc.srcFile));

		this.forest = new ArrayList<>();
		for (File file: map.keySet()) {
			List<Location> list = map.get(file);
			FixTree tree = new FixTree(file, list);
			this.forest.add(tree);
		}

		this.outDir = outDir;
	}

	void fix() {
		for (FixTree tree: forest) {
			tree.fix();
			File dir = new File(outDir + tree.packageName.replace('.', '/') + "/");
			dir.mkdirs();
			try {
				File file = new File(dir, tree.file.getName());
				PrintWriter writer = new PrintWriter(file);
				writer.print(tree.currentVersion());
				writer.close();
				System.out.println("output repaired code: " + file.toString());
			} catch (IOException e) {
				throw new RuntimeException(e);
			}
		}
	}
}
