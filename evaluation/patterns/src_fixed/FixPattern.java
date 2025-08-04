import sg.edu.nus.comp.tsunami.safe.Safe;

public class FixPattern {

    int global;

    // Fix pattern 1: replacing operator with safe functions
    public boolean patternOperatorLt(int r1, int r2) {
        return Safe.lt(V.detPure(r1), V.detPure(r2));
    }

    public int patternOperatorTernary(boolean b, int x, int y) {
        return Safe.cond(b, x, y);
    }

    // Fix pattern 2, step 1: fixing early return
    public int patternIfStep1(int a1, int a2, int a3, int a4, int a5) {
        boolean earlyReturn = false;
        int returnValue = 0;

        // Before IF: not changed
        if (V.detPureCondition(a1)) { // Condition: pure value

            /*
             * Inside the branch:
             * assignment, with RHS value being pure
             */
            int inner = 0;
            inner = Safe.cond(earlyReturn, inner, V.detPure(a2));
            global = Safe.cond(earlyReturn, global, V.detPure(a3));

            /*
             * Use `inner` in the return value, to show that is remains unchanged after
             * repair.
             * No need to do the same for `global`, because it is part of globally visible
             * state.
             */
            returnValue = V.detPure(a4, inner);
            earlyReturn = true;
        }

        /*
         * Outside the branch:
         * anything deterministic without control flow transfer
         */
        return Safe.cond(earlyReturn, returnValue, V.detPure(a5)); // Return: pure value
    }

    // Fix pattern 2, step 2: fixing if
    public int patternIfStep2(boolean b, int a1, int a2, int a3, int a4, int a5) {
        int inner = 0;
        inner = Safe.cond(b, V.detPure(a1), inner);
        global = Safe.cond(b, V.detPure(a2, inner), global);
        inner = Safe.cond(b, inner, V.detPure(a3));
        global = Safe.cond(b, global, V.detPure(a4, inner));

        return V.detPure(a5);
    }

    // Fix pattern 3, step 1: fixing number of iterations
    public int patternLoopStep1(int bound) {
        for (int i = 0; i < bound; i++) {
            if (!V.detPureCondition(i)) {
                break;
            }

            int inner = V.detPure(i);
            global = V.detPure(i, inner);
        }

        return 0;
    }

    // Fix pattern 3, step 2: fixing early break
    public int patternLoopStep2(int bound) {
        boolean earlyBreak = false;

        for (int i = 0; i < bound; i++) {
            if (!V.detPureCondition(i)) {
                earlyBreak = true;
            }

            int inner = 0;
            inner = Safe.cond(earlyBreak, inner, V.detPure(i));
            global = Safe.cond(earlyBreak, global, V.detPure(i, inner));
        }

        return 0;
    }
}
