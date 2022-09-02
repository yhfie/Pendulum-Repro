package pendulum;

import edu.lu.uni.serval.jdt.tree.ITree;
import edu.lu.uni.serval.tbar.utils.Checker;
import javassist.CtMethod;
import javassist.bytecode.*;
import javassist.bytecode.analysis.ControlFlow;
import pendulum.bytecode.BlockInfo;
import pendulum.util.AstUtils;
import pendulum.util.BytecodeUtils;
import pendulum.util.FileUtils;

import java.io.File;
import java.util.*;

class Location {
    BlockInfo bInfo;
    SourceLoc sourceLoc;

    public Location(BlockInfo bInfo, SourceLoc sourceLoc) {
        this.bInfo = bInfo;
        this.sourceLoc = sourceLoc;
    }

    public BlockInfo getBlockInfo() {
        return bInfo;
    }

    public SourceLoc getSourceLoc() {
        return sourceLoc;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Location location = (Location) o;
        return bInfo.equals(location.bInfo) && sourceLoc.equals(location.sourceLoc);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bInfo, sourceLoc);
    }

    @Override
    public String toString() {
        return String.format("{%s | %s}", sourceLoc, bInfo);
    }
}

enum LeakType {
    IF("if"),
    WHILE("while"), FOR("for"), DO_WHILE("do_while"),

    NOT("!"),

    CONDITIONAL_AND("&&"), CONDITIONAL_OR("||"),
    GREATER_EQUALS(">="), GREATER(">"), LESS_EQUALS("<="), LESS("<"),
    EQUALS("=="), NOT_EQUALS("!="),

    TERNARY("?:");

    final String symbol;

    LeakType(String symbol) {
        this.symbol = symbol;
    }

    static LeakType fromSymbol(String symbol) {
        for (LeakType type: LeakType.values()) {
            if (type.symbol.equals(symbol)) {
                return type;
            }
        }
        throw new IllegalArgumentException("No leak type with symbol \"" + symbol + "\"");
    }

    String getSymbol() {
        return symbol;
    }

    static String getHelperName(LeakType type) {
        String s;
        switch (type) {
            case NOT: s = "not"; break;
            case CONDITIONAL_AND: s = "and"; break;
            case CONDITIONAL_OR: s = "or"; break;
            case GREATER: s = "gt"; break;
            case LESS: s = "lt"; break;
            case GREATER_EQUALS: s = "ge"; break;
            case LESS_EQUALS: s = "le"; break;
            case EQUALS: s = "eq"; break;
            case NOT_EQUALS: s = "neq"; break;
            case TERNARY: s = "cond"; break;
            default:
                throw new IllegalArgumentException("Leak type " + type + "does not have helper function");
        }
        return "Safe." + s;
    }

    static boolean isStatementType(LeakType type) {
        return type == LeakType.IF || type == LeakType.WHILE || type == LeakType.FOR || type == LeakType.DO_WHILE;
    }
}

class SourceLoc {
    File srcFile;
    int pos;
    int endPos;
    SourceLoc parent;
    LeakType type;

    public SourceLoc(File srcFile, LeakType type, int pos, int endPos, SourceLoc parent) {
        this.srcFile = srcFile;
        this.type = type;
        this.pos = pos;
        this.endPos = endPos;
        this.parent = parent;
    }

    public SourceLoc getParent() {
        return parent;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SourceLoc sourceLoc = (SourceLoc) o;
        return pos == sourceLoc.pos && endPos == sourceLoc.endPos
                && srcFile.equals(sourceLoc.srcFile) && type == sourceLoc.type;
    }

    @Override
    public int hashCode() {
        return Objects.hash(srcFile, pos, endPos, type);
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(srcFile.getName()).append(": ").append(type.getSymbol()).append("@").append(pos);
        SourceLoc p = parent;
        while (p != null) {
            builder.append(" -> ").append(p.type.getSymbol()).append("@").append(p.pos);
            p = p.parent;
        }
        return builder.toString();
    }
}

public class Localizer {
    public static void main(String[] args) throws Exception {
        List<Location> locations = getFixLocations("server.log");
    }

    public static List<Location> getFixLocations(String filepath) {
        try {
            LogAnalyzer analyzer = new LogAnalyzer("QDriver",
                    new File(filepath));
            analyzer.analyzeLog();
            analyzer.traceSecrets();

            analyzer.diffTraces();
            Map<String, Map<String, Set<String>>> diffTable = analyzer.getDiffTable();
            Set<String> divergingBlocks = new HashSet<>();
            for (Map<String, Set<String>> m: diffTable.values()) {
                for (Set<String> bbNames: m.values()) {
                    divergingBlocks.addAll(bbNames);
                }
            }

            List<String> divergingBlockList = new ArrayList<>(divergingBlocks);

            int maxSubsetSize = divergingBlockList.size();
            long maxMask = 1L << maxSubsetSize;
            Map<Integer, List<List<String>>> locSubsets = new HashMap<>();
            for (long mask = 1L; mask < maxMask; mask++) {
                int n = 0;
                List<String> subset = new ArrayList<>();
                for (int i = 0, b = 1; b <= mask ; i++, b <<= 1) {
                    if ((b & mask) != 0) {
                        n++;
                        subset.add(divergingBlockList.get(i));
                    }
                }
                if (!locSubsets.containsKey(n)) {
                    locSubsets.put(n, new ArrayList<>());
                }
                locSubsets.get(n).add(subset);
            }
//            System.out.println(locSubsets);

            List<List<String>> bestLocSubsets = new ArrayList<>();
            List<Integer> clusterReductions = new ArrayList<>();
            for (int i = 1; i <= maxSubsetSize; i++) {
                int maxReduction = -1;
                List<String> bestLocSubset = null;

                List<List<String>> subsets = locSubsets.get(i);
                for (List<String> subset: subsets) {
                    Map<String, String> affiliation = new HashMap<>();
                    for (String secret: diffTable.keySet()) {
                        affiliation.put(secret, secret);
                    }

                    for (Map.Entry<String, Map<String, Set<String>>> entry: diffTable.entrySet()) {
                        String secret1 = entry.getKey();
                        Map<String, Set<String>> map = entry.getValue();
                        for (Map.Entry<String, Set<String>> entry2: map.entrySet()) {
                            String secret2 = entry2.getKey();
                            Set<String> difference = entry2.getValue();

                            if (subset.containsAll(difference)) {
                                affiliation.put(secret2, affiliation.get(secret1));
                            }
                        }
                    }

                    int clusters = (new HashSet<>(affiliation.values())).size();
                    int reduction = analyzer.chosenSecrets.size() - clusters;
                    if (reduction > maxReduction) {
                        maxReduction = reduction;
                        bestLocSubset = subset;
                    }
                }
                bestLocSubsets.add(bestLocSubset);
                clusterReductions.add(maxReduction);
            }

            List<Location> locations = new ArrayList<>();
            for (String bbName: divergingBlockList) {
                locations.add(locationOf(bbName));
            }

            int idx = 0;
            System.out.print("\nFix Locations:\n");
            for (Location loc: locations) {
                System.out.println("    [" + (++idx) + "] " + loc);
            }

            System.out.print("\nPrioritized Subsets to Fix:\n");
            idx = 0;
            for (List<String> subset: bestLocSubsets) {
                List<String> indices = new ArrayList<>();
                for (String bbName: subset) {
                    indices.add(String.valueOf(divergingBlockList.indexOf(bbName) + 1));
                }
                System.out.println("    {" + String.join(", ", indices) + "} (reduction = " +
                        clusterReductions.get(idx++) + " / " + analyzer.selectedReport.numClusters + ")");
            }
            System.out.println();

            return locations;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    static int getBBLastPC(CtMethod ctMethod, int bbFirstPC) {
        int bbLastPc = -1;
        try {
            int bbEndPc = -1;
            ControlFlow flow = new ControlFlow(ctMethod);
            ControlFlow.Block[] blocks = flow.basicBlocks();
            for (ControlFlow.Block bb: blocks) {
                if (bb.position() <= bbFirstPC) {
                    int tmp = bb.position() + bb.length();
                    if (tmp > bbFirstPC) {
                        bbEndPc = tmp;
                        break;
                    }
                }
            }

            MethodInfo methodInfo = ctMethod.getMethodInfo();
            CodeAttribute ca = methodInfo.getCodeAttribute();
            CodeIterator it = ca.iterator();

            while (it.hasNext()) {
                if (it.lookAhead() >= bbEndPc) {
                    break;
                }
                bbLastPc = it.next();
            }
        } catch (BadBytecode e) {
            throw new RuntimeException(e);
        }
        return bbLastPc;
    }

    static boolean isCondJumpOpcode(int opcode) {
        return (opcode >= 0x99 && opcode <= 0xa6) || (opcode >= 0xc6 && opcode <= 0xc7);
    }

    static Location locationOf(String bbName) {
//        System.out.printf("Begin localizing %s\n", bbName);
        BlockInfo bInfo = BlockInfo.valueOf(bbName);
        String fullMethodName = bInfo.getFullMethodName();
        CtMethod ctMethod = BytecodeUtils.getCtMethodByFullName(fullMethodName);
        int bbLastPc = getBBLastPC(ctMethod, bInfo.pc);

//        System.out.printf("--jump insn at %d\n", bbLastPc);

        MethodInfo methodInfo = ctMethod.getMethodInfo();
        CodeAttribute ca = methodInfo.getCodeAttribute();
        LineNumberAttribute lineNoAttr =
                (LineNumberAttribute) ca.getAttribute("LineNumberTable");
        int bbLastLineNo = lineNoAttr.toLineNumber(bbLastPc);

//        System.out.printf("--line number %d\n", bbLastLineNo);

        List<Integer> condJumpsInThisLine = new ArrayList<>();
        CodeIterator it = ca.iterator();
        try {
            while (it.hasNext()) {
                int pc = it.next();
                if (isCondJumpOpcode(it.byteAt(pc))) {
                    int lineNo = lineNoAttr.toLineNumber(pc);
                    if (lineNo == bbLastLineNo) {
                        condJumpsInThisLine.add(pc);
                    }
                }
            }
        } catch (BadBytecode e) {
            throw new RuntimeException(e);
        }
//        System.out.printf("--condJumps: %d %s\n", condJumpsInThisLine.size(), condJumpsInThisLine);

        File srcFile = BytecodeUtils.getSourceFileOfMethod(fullMethodName);
        ITree ast = AstUtils.getMethodDeclAst(srcFile, bbLastLineNo);
        List<ITree> subtrees = findSubTreesAtLine(ast, srcFile, bbLastLineNo);
//        System.out.println("--subtrees: " + subtrees);

        List<SourceLoc> sourceLocs = new ArrayList<>();
        for (ITree t: subtrees)
            sourceLocs.addAll(findCondJumpInsnLocations(t, srcFile));

        int index = condJumpsInThisLine.indexOf(bbLastPc);
        SourceLoc sourceLoc = sourceLocs.get(index);
//        System.out.println("--sourceLocs: " + sourceLocs.size() + " " + sourceLocs);

//        System.out.println("--result: " + sourceLoc);
        return new Location(bInfo, sourceLoc);
    }

    static List<ITree> findSubTreesAtLine(ITree ast, File srcFile, int lineNo) {
        List<ITree> result = new ArrayList<>();
        Iterable<ITree> preOrder = ast.preOrder();
        for (ITree t: preOrder) {
            int type = t.getType();
            if (Checker.isBlock(type) || !Checker.isStatement(type))
                continue;

            int startLineNo = FileUtils.getLineNumberOfPos(srcFile, t.getPos());
            int endLineNo = FileUtils.getLineNumberOfPos(srcFile, t.getEndPos());
            if (lineNo < startLineNo || lineNo > endLineNo)
                continue;

            if (Checker.isForStatement(type)) {
                // assume [INIT] and [UPDATE] part don't contain conditionals
                String[] tmp = t.getLabel().split(";");
                if (tmp.length == 2)
                    continue;
                int index = tmp[0].equals("[]") ? 0 : 1;
                ITree check = t.getChild(index);
                int l1 = FileUtils.getLineNumberOfPos(srcFile, check.getPos());
                int l2 = FileUtils.getLineNumberOfPos(srcFile, check.getEndPos());
                if (lineNo >= l1 && lineNo <= l2) {
                    result.add(t);
                }
            } else {
                int pos = -1;
                String srcString = FileUtils.readFile(srcFile);
                if (Checker.isIfStatement(type)) {
                    pos = t.getPos();
                } else if (Checker.isWhileStatement(type)) {
                    pos = srcString.indexOf('(', t.getPos());
                } else if (Checker.isDoStatement(type)) {
                    List<ITree> children = t.getChildren();
                    ITree condition = children.get(children.size() - 1);
                    pos = srcString.indexOf('(',
                                srcString.lastIndexOf('}', condition.getPos()));
                } else {  // other statements
                    pos = t.getPos();
                }
                int l = FileUtils.getLineNumberOfPos(srcFile, pos);
                if (l == lineNo) {
                    result.add(t);
                }
            }
        }
        return result;
    }

    static List<SourceLoc> findCondJumpInsnLocations(ITree ast, File srcFile) {
        List<SourceLoc> result = new ArrayList<>();
        findCondJumpInsnLocations(ast, srcFile, null, result);
        return result;
    }

    static void findCondJumpInsnLocations(ITree ast, File srcFile, SourceLoc parent, List<SourceLoc> result) {
        int type = ast.getType();
        if (Checker.isStatement(type)) {
            assert parent == null;

            ITree condition = null;
            LeakType leakType = null;

            if (Checker.isIfStatement(type)) {
                condition = ast.getChild(0);
                leakType = LeakType.IF;
            } else if (Checker.isWhileStatement(type)) {
                condition = ast.getChild(0);
                leakType = LeakType.WHILE;
            } else if (Checker.isForStatement(type)) {
                String[] tmp = ast.getLabel().split(";");
                assert tmp.length == 3;
                int index = tmp[0].equals("[]") ? 0 : 1;
                condition = ast.getChild(index);
                leakType = LeakType.FOR;
            } else if (Checker.isDoStatement(type)) {
                List<ITree> children = ast.getChildren();
                condition = children.get(children.size() - 1);
                leakType = LeakType.DO_WHILE;
            }

            if (condition != null) {
                SourceLoc thisLoc = new SourceLoc(srcFile, leakType, ast.getPos(), ast.getEndPos(), null);
                int oldN = result.size();
                findCondJumpInsnLocations(condition, srcFile, thisLoc, result);
                if (oldN == result.size()) {
                    result.add(thisLoc);
                }
            } else {  // other statements
                List<ITree> children = ast.getChildren();
                for (ITree child: children)
                    findCondJumpInsnLocations(child, srcFile, null, result);
            }
        } else if (Checker.isPrefixExpression(type)) {
            ITree op = ast.getChild(0);
            ITree subExpr = ast.getChild(1);
            if (!op.getLabel().equals("!")) {
                findCondJumpInsnLocations(subExpr, srcFile, null, result);
                return;
            }

            int oldN = result.size();
            findCondJumpInsnLocations(subExpr, srcFile, parent, result);
            if (oldN == result.size()) {
                // NOTE: for a prefix expression, the position of operator is identical with the position of the
                // expression. In a pre-order traversal, we'll find the `PrefixExpression` before the `Operator`.
                SourceLoc thisLoc = new SourceLoc(srcFile, LeakType.NOT, op.getPos(), op.getEndPos(), parent);
                result.add(thisLoc);
            }
        } else if (Checker.isInfixExpression(type)) {
            LeakType leakType = null;
            ITree op = ast.getChild(1);
            String symbol = op.getLabel();
            try {
                leakType = LeakType.fromSymbol(symbol);
            } catch (IllegalArgumentException e) {
                // do nothing
            }

            if (leakType == null) {
                findCondJumpInsnLocations(ast.getChild(0), srcFile, null, result);
                findCondJumpInsnLocations(ast.getChild(2), srcFile, null, result);
                return;
            }

            if (leakType == LeakType.CONDITIONAL_AND || leakType == LeakType.CONDITIONAL_OR) {
                int oldN = result.size();
                SourceLoc thisLoc = new SourceLoc(srcFile, leakType, op.getPos(), op.getEndPos(), null);
                findCondJumpInsnLocations(ast.getChild(0), srcFile, thisLoc, result);
                if (oldN == result.size()) {
                    result.add(thisLoc);
                }

                oldN = result.size();
                SourceLoc thisLoc2 = new SourceLoc(srcFile, leakType, op.getPos(), op.getEndPos(), parent);
                findCondJumpInsnLocations(ast.getChild(2), srcFile, thisLoc2, result);
                if (oldN == result.size()) {
                    result.add(thisLoc2);
                }
            } else {  // >, <, >=, <=, ==, !=
                findCondJumpInsnLocations(ast.getChild(0), srcFile, null, result);
                findCondJumpInsnLocations(ast.getChild(2), srcFile, null, result);
                SourceLoc thisLoc = new SourceLoc(srcFile, leakType, op.getPos(), op.getEndPos(), parent);
                result.add(thisLoc);
            }

        } else if (Checker.isConditionalExpression(type)) {
            SourceLoc thisLoc = new SourceLoc(srcFile, LeakType.TERNARY, ast.getPos(), ast.getEndPos(), null);
            int oldN = result.size();
            findCondJumpInsnLocations(ast.getChild(0), srcFile, thisLoc, result);
            if (oldN == result.size()) {
                result.add(thisLoc);
            }

            oldN = result.size();
            findCondJumpInsnLocations(ast.getChild(1), srcFile, parent, result);
            if (oldN == result.size()) {
                result.add(parent);
            }

            oldN = result.size();
            findCondJumpInsnLocations(ast.getChild(2), srcFile, parent, result);
            if (oldN == result.size()) {
                result.add(parent);
            }
        } else {
            List<ITree> children = ast.getChildren();
            SourceLoc thisParent = Checker.isParenthesizedExpression(type) ? parent : null;
            for (ITree child: children)
                findCondJumpInsnLocations(child, srcFile, thisParent, result);
        }
    }
}
