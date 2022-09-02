package pendulum.util;

import static pendulum.util.FileUtils.getLineNumberOfPos;

import edu.lu.uni.serval.jdt.generator.ExpJdtTreeGenerator;
import edu.lu.uni.serval.jdt.tree.TreeContext;
import edu.lu.uni.serval.jdt.tree.ITree;
import edu.lu.uni.serval.jdt.tree.TreeUtils;
import edu.lu.uni.serval.tbar.utils.Checker;

import org.eclipse.jdt.core.dom.ASTParser;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class AstUtils {
	public static ITree subtreeAt(ITree ast, int pos) {
		ITree subtree = null;
		Iterable<ITree> preOrder = ast.preOrder();
		for (ITree node: preOrder) {
			if (node.getPos() == pos) {
				subtree = node;
				break;
			}
		}
		assert subtree != null;
		return subtree;
	}

	public static ITree fileStrAst(String fileStr) {
		ExpJdtTreeGenerator generator = new ExpJdtTreeGenerator();
		try {
			TreeContext ctx = generator.generateFromCodeString(fileStr);
			ITree root = ctx.getRoot();
			return root;
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}

	public static ITree getMethodDeclAst(File srcFile, int lineNo) {
		ExpJdtTreeGenerator generator = new ExpJdtTreeGenerator();
		TreeContext ctx = null;
		try {
			FileInputStream srcStream = new FileInputStream(srcFile);
			InputStreamReader r = new InputStreamReader(srcStream);
			ctx = generator.generate(r, ASTParser.K_COMPILATION_UNIT);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		ITree root = ctx.getRoot();
		TreeUtils.computeDepth(root);
		Iterable<ITree> bfs = root.breadthFirst();
		Iterator<ITree> it = bfs.iterator();
		ITree decl = null;
		while (it.hasNext()) {
			try {
				ITree node = it.next();
			
				if (Checker.isMethodDeclaration(node.getType())) {
					int startPos = node.getPos();
					int endPos = startPos + node.getLength();
					int startLineNo = getLineNumberOfPos(srcFile, startPos);
					int endLineNo = getLineNumberOfPos(srcFile, endPos);
					if (lineNo >= startLineNo && lineNo <= endLineNo) {
						decl = node;
						break;
					}
				}
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
		return decl;
	}
	
	public static String getReturnType(ITree methodAst) {
		Pattern p = Pattern.compile("@@([^,]+), MethodName");
		Matcher matcher = p.matcher(methodAst.getLabel());
		boolean b = matcher.find();
		assert b;
		return matcher.group(1);
	}

	public static String astStr(ITree t, String fileStr) {
		return fileStr.substring(t.getPos(), t.getEndPos());
	}

	public static String detectIndent(ITree t, String fileStr) {
		int pos = t.getPos();
		int lineBreak = fileStr.lastIndexOf('\n', pos);
		String s = fileStr.substring(lineBreak + 1, pos);
		return s.replaceAll("\\S", "");
	}
}
