import java.math.BigInteger;
public class GPT14 {
    public static BigInteger sqr_basecase(BigInteger a) {
        BigInteger p;
        if (a.testBit(0)) {
            p = a;
        } else {
            p = BigInteger.valueOf(0);
        }
        int n = a.bitLength();
        for (int i = 1; i < n; i++) {
            if (a.testBit(i))
                p = p.add(a.shiftLeft(i));

        }
        return p;
    }

    public static BigInteger modular_exponentiation_inline_unsafe$Old(BigInteger a, BigInteger b, BigInteger p) {
        BigInteger m = BigInteger.valueOf(1);
        int n = b.bitLength();
        for (int i = 0; i < n; i++) {
            BigInteger p1;
            if (m.testBit(0)) {
                p1 = m;
            } else {
                p1 = BigInteger.valueOf(0);
            }
            int n1 = m.bitLength();
            for (int j = 1; j < n1; j++) {
                if (m.testBit(j))
                    p1 = p1.add(m.shiftLeft(j));

            }
            m = p1.mod(p);
            BigInteger t = m.multiply(a).mod(p);
            if (b.testBit(i)) {
                m = t;
            }
        }
        return a;
    }

    public static BigInteger modular_exponentiation_inline_unsafe(BigInteger a, BigInteger b, BigInteger p) {
        BigInteger $1 = BigInteger.valueOf(1);
        BigInteger m = BigInteger.valueOf(1);
        int n = b.bitLength();
        for (int i = 0; i < n; i++) {
            BigInteger p1;
            if (m.testBit(0)) {
                p1 = m;
            } else {
                p1 = BigInteger.valueOf(0);
            }
            int n1 = m.bitLength();
            for (int j = 1; j < n1; j++) {
                if (m.testBit(j)) {
                    p1 = p1.add(m.shiftLeft(j));
                }
            }
            m = p1.mod(p);
            BigInteger t = m.multiply(a).mod(p);
            if (b.testBit(i)) {
                m = t;
            } else {
                $1 = t;
            }
        }
        return a;
    }
}