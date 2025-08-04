import sg.edu.nus.comp.tsunami.safe.Safe;

import java.math.BigInteger;

public class GPT14 {

/*
 * this example was extracted from D. Genkin, I. Pipman, and E. J. Tromer. "Get your hands off my laptop: physical side-channel key-extraction attacks on PCs". 2014
 */

    // public static BigInteger modular_exponentiation_safe(BigInteger a, BigInteger b, BigInteger p) {
    //     BigInteger m = BigInteger.valueOf(1);
    //     int n = b.bitLength();
    //     for(int i = 0; i < n; i++) {
    //         m = m.multiply(m).mod(p);
    //         BigInteger t = m.multiply(a).mod(p);
    //         if(b.testBit(i)) {
    //             m = t;
    //         }
    //     }
    //     return a;
    // }

    public static BigInteger sqr_basecase(BigInteger a) {
        BigInteger p;
        if(a.testBit(0)) {
            p = a;
        } else {
            p = BigInteger.valueOf(0);
        }
        int n = a.bitLength();
        for(int i = 1; i < n; i++) {
            if(a.testBit(i))
                p = p.add(a.shiftLeft(i));
        }
        return p;
    }

    public static BigInteger modular_exponentiation_inline_unsafe(BigInteger a, BigInteger b, BigInteger p) {
        BigInteger m = BigInteger.valueOf(1);
        int n = b.bitLength();
        for(int i = 0; i < n; i++) {

            //starting of the inlining
            BigInteger p1 = null;
            if(m.testBit(0)) {
                p1 = m;
            } else {
                p1 = BigInteger.valueOf(0);
            }
            int n1 = m.bitLength();
            int _ub1513 = 32;
            boolean _break1506 = false;
            for(int j = 1; --_ub1513 > 0; j++) {
                
            {
            boolean _guard1513 = Safe.not(Safe.lt(j,n1));
            
            _break1506 = Safe.cond(_guard1513, true, _break1506);

            {
                boolean _b1552 = m.testBit((j % n1));
                
                p1 = Safe.cond(_break1506, p1, Safe.cond(_b1552, p1.add(m.shiftLeft((j % n1))), p1));

            }
            }
            }

            m = p1.mod(p);

            BigInteger t = m.multiply(a).mod(p);

            boolean _b1722 = b.testBit(i);
            m = Safe.cond(_b1722, t, m);

        }
        return a;
    }

}
