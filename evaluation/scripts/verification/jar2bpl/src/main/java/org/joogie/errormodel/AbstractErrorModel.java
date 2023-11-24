/**
 * 
 */
package org.joogie.errormodel;

import java.util.LinkedList;
import java.util.List;

import org.joogie.GlobalsCache;
import org.joogie.soot.SootPrelude;
import org.joogie.soot.SootProcedureInfo;
import org.joogie.soot.SootStmtSwitch;
import org.joogie.util.TranslationHelpers;

import soot.Scene;
import soot.SootClass;
import soot.Trap;
import soot.jimple.Stmt;
import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.ast.expression.Expression;
import boogie.ast.statement.Statement;
import boogie.enums.BinaryOperator;

/**
 * @author schaef
 * 
 */
public abstract class AbstractErrorModel {

	protected SootProcedureInfo procInfo;
	protected SootStmtSwitch stmtSwitch;
	protected ProgramFactory pf;

	public AbstractErrorModel(SootProcedureInfo pinfo, SootStmtSwitch stmtswitch) {
		this.procInfo = pinfo;
		this.pf = GlobalsCache.v().getPf();
		this.stmtSwitch = stmtswitch;
	}

	/**
	 * Called if an exception is thrown that also occurs in the throws clause
	 * 
	 * @param guard
	 *            the condition which must be violated in order to have the
	 *            exception thrown. May be null if the exception is always
	 *            thrown.
	 * @param exception
	 */
	abstract public void createdExpectedException(Expression guard,
			SootClass exception);

	/**
	 * Called if an exception is thrown that also occurs in NOT the throws
	 * clause
	 * 
	 * @param guard
	 *            the condition which must be violated in order to have the
	 *            exception thrown. May be null if the exception is always
	 *            thrown.
	 * @param exception
	 */
	abstract public void createdUnExpectedException(Expression guard,
			SootClass exception);


	protected void createException(Expression guard, SootClass exception) {

		List<Trap> traps =  new LinkedList<Trap>();
		List<Trap> finally_traps =  new LinkedList<Trap>(); //TODO: do we have to use them here?
		TranslationHelpers.getReachableTraps(this.stmtSwitch.getCurrentStatement(), this.procInfo.getSootMethod(), traps, finally_traps);

		String transferlabel = null;
		for (Trap trap : traps) {
			if (GlobalsCache.v().isSubTypeOrEqual(exception,
					trap.getException())) {
				transferlabel = GlobalsCache.v().getUnitLabel(
						(Stmt) trap.getHandlerUnit());
				break;
			}
		}

		if (transferlabel == null) {
			// if not, check if the exception is in the throws clause
			if (GlobalsCache.v().inThrowsClause(exception, this.procInfo)) {
				createdExpectedException(guard, exception);
			} else {
				createdUnExpectedException(guard, exception);
			}
		} else {

			// if the exception is caught, create a goto
			Statement transferStatement = this.pf
					.mkGotoStatement(transferlabel);

			// now assign the exception variable to make sure that the catch
			// block
			// is feasible when we transfer there.
			Expression exception_type = GlobalsCache.v().lookupClassVariable(
					exception);
			Statement raise = SootPrelude.v().newObject(new Attribute[] {},
					this.procInfo.getExceptionVariable(), exception_type);
			// if the exception is guarded create a conditional choice,
			// otherwise just throw it.
			if (guard != null) {
                List<Statement> elsePartList = new LinkedList<>();
                elsePartList.add(TranslationHelpers.mkLocationAssertion(this.stmtSwitch.getCurrentStatement()));
                elsePartList.add(this.pf.mkAssertStatement(
                        new Attribute[] { pf.mkNoVerifyAttribute() },
                        pf.mkBooleanLiteral(true)));
                if (procInfo.getReturnVariable() != null) {
                    elsePartList.add(stmtSwitch.mkDumpReturnValueAssignment());
                }
                elsePartList.add(raise);
                elsePartList.add(transferStatement);

                Statement[] elsePart = elsePartList.toArray(new Statement[elsePartList.size()]);
				Statement[] thenPart = { TranslationHelpers
						.mkLocationAssertion(this.stmtSwitch
								.getCurrentStatement()) };
				this.stmtSwitch.addStatement(this.pf.mkIfStatement(guard,
						thenPart, elsePart));
			} else {
                if (procInfo.getReturnVariable() != null) {
                    this.stmtSwitch.addStatement(this.stmtSwitch.mkDumpReturnValueAssignment());
                }
				this.stmtSwitch.addStatement(raise);
				this.stmtSwitch.addStatement(transferStatement);
			}
		}
	}



	public Statement createAssumeNonNull(Expression expr) {
		Expression guard = this.pf
				.mkBinaryExpression(this.pf.getBoolType(),
						BinaryOperator.COMPNEQ, expr, SootPrelude.v()
								.getNullConstant());
		return this.pf.mkAssumeStatement(new Attribute[0], guard);
	}

	public void createUnguardedException(SootClass exception) {
		createException(null, exception);
	}

	public void createNonNullViolationException(Expression expr) {
		Expression guard = this.pf
				.mkBinaryExpression(this.pf.getBoolType(),
						BinaryOperator.COMPNEQ, expr, SootPrelude.v()
								.getNullConstant());
		// TODO: it is actually not a java.lang.RuntimeException ... but I don't
		// have anything usefull to report!
		createException(
				guard,
				Scene.v().loadClass("java.lang.RuntimeException",
						SootClass.SIGNATURES));
	}

	public void createPreconditionViolationException(Expression expr) {
		// TODO: it is actually not a java.lang.RuntimeException ... but I don't
		// have anything usefull to report!
		createException(
				expr,
				Scene.v().loadClass("java.lang.RuntimeException",
						SootClass.SIGNATURES));
	}

	public void createPostconditionViolationException(Expression expr) {
		// TODO: it is actually not a java.lang.RuntimeException ... but I don't
		// have anything usefull to report!
		createException(
				expr,
				Scene.v().loadClass("java.lang.RuntimeException",
						SootClass.SIGNATURES));
	}

	public void createArrayBoundGuard(Expression baseExpression,
			Expression indexExpression) {
		Expression upperbound = this.pf.mkBinaryExpression(
				this.pf.getBoolType(), BinaryOperator.COMPLT, indexExpression,
				GlobalsCache.v().getArraySizeExpression(baseExpression));

		Expression lowerbound = this.pf.mkBinaryExpression(
				this.pf.getBoolType(), BinaryOperator.COMPGEQ, indexExpression,
				this.pf.mkIntLiteral("0"));

		Expression guard = this.pf.mkBinaryExpression(this.pf.getBoolType(),
				BinaryOperator.LOGICAND, upperbound, lowerbound);
		createException(
				guard,
				Scene.v().loadClass("java.lang.ArrayIndexOutOfBoundsException",
						SootClass.SIGNATURES));
	}

	public void createNonNullGuard(Expression expr) {
		Expression guard = this.pf
				.mkBinaryExpression(this.pf.getBoolType(),
						BinaryOperator.COMPNEQ, expr, SootPrelude.v()
								.getNullConstant());
		createException(
				guard,
				Scene.v().loadClass("java.lang.NullPointerException",
						SootClass.SIGNATURES));
	}

	public void createDivByZeroGuard(Expression expr) {
		Expression guard = this.pf.mkBinaryExpression(this.pf.getBoolType(),
				BinaryOperator.COMPNEQ, expr, this.pf.mkIntLiteral("0"));
		createException(
				guard,
				Scene.v().loadClass("java.lang.ArithmeticException",
						SootClass.SIGNATURES));
	}

	public void createClassCastGuard(Expression subtype, Expression supertype) {
		Expression guard = GlobalsCache.v().compareTypeExpressions(subtype,
				supertype);
		createException(
				guard,
				Scene.v().loadClass("java.lang.ClassCastException",
						SootClass.SIGNATURES));
	}
}
