import java.math.BigInteger;
public class K96 {
    public static BigInteger modular_exponentiation_unsafe$Old(BigInteger y, BigInteger x, BigInteger n, int w) {
        BigInteger s = BigInteger.ONE;
        BigInteger r = BigInteger.ZERO;
        for (int k = 0; k < w; k++) {
            if (x.testBit(k)) {
                r = standardMultiply(s, y).mod(n);
            } else {
                r = s;
            }
            s = standardMultiply(r, r).mod(n);
        }
        return r;
    }

    public static BigInteger modular_exponentiation_unsafe(BigInteger y, BigInteger x, BigInteger n, int w) {
        BigInteger $1 = BigInteger.ZERO;
        BigInteger s = BigInteger.ONE;
        BigInteger r = BigInteger.ZERO;
        for (int k = 0; k < w; k++) {
            if (x.testBit(k)) {
                $1 = s;
                r = standardMultiply(s, y).mod(n);
            } else {
                $1 = standardMultiply(s, y).mod(n);
                r = s;
            }
            s = standardMultiply(r, r).mod(n);
        }
        return r;
    }

    public static BigInteger standardMultiply(BigInteger x, BigInteger y) {
        BigInteger ret = BigInteger.ZERO;
        for (int i = 0; i < y.bitLength(); i++) {
            if (y.testBit(i)) {
                ret = ret.add(x.shiftLeft(i));
            }
        }
        return ret;
    }
}