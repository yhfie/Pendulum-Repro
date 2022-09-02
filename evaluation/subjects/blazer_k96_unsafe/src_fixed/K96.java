import pendulum.safe.Safe;

import java.math.BigInteger;

public class K96 {
  
/*
 * this example was extracted from P. Kocher. "Timing attacks on implementations of Diffie-Hellman, RSA, DSS, and other systems". CRYPTO '96.
 */
    
    public static BigInteger modular_exponentiation_unsafe(BigInteger y, BigInteger x, BigInteger n, int w) {
        BigInteger s = BigInteger.ONE;
        // int w = x.bitLength();
        BigInteger r = BigInteger.ZERO;
        for(int k = 0; k < w; k++) {
            boolean _b478 = x.testBit(k);
            r = Safe.cond(_b478, standardMultiply(s,y).mod(n), r);
            r = Safe.cond(_b478, r, s);

            // s = r.multiply(r).mod(n);
            s = standardMultiply(r,r).mod(n);
        }
        return r;
    }
    
    // public static BigInteger modular_exponentiation_safe(BigInteger y, BigInteger x, BigInteger n, int w) {
    //     BigInteger s = BigInteger.ONE;
    //     // int w = x.bitLength();
    //     BigInteger r = BigInteger.ZERO;
    //     for(int k = 0; k < w; k++) {
    //         if(x.testBit(k)) {
    //             r = s;
    //             // r = s.multiply(y).mod(n);
    //             r = standardMultiply(s,y).mod(n);
    //         } else {
    //             // r = s.multiply(y).mod(n);
    //             r = standardMultiply(s,y).mod(n);
    //             r = s;
    //         }
    //         s = r.multiply(r).mod(n);
    //     }
    //     return r;
    // }

    public static BigInteger standardMultiply(BigInteger x, BigInteger y) {
        BigInteger ret = BigInteger.ZERO;
        int _ub1589 = 32;
        boolean _break1589 = false;
        for (int i = 0; --_ub1589 > 0; i++) {
            
        {
        boolean _guard1589 = Safe.not(Safe.lt(i,y.bitLength()));
        
        _break1589 = Safe.cond(_guard1589, true, _break1589);

        {
            boolean _b1643 = y.testBit((i % y.bitLength()));
            
            ret = Safe.cond(_break1589, ret, Safe.cond(_b1643, ret.add(x.shiftLeft((i % y.bitLength()))), ret));

        }
        }
        }

        return ret;
    }
}
