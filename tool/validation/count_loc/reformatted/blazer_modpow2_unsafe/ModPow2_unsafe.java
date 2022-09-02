import java.math.BigInteger;

public class ModPow2 {

  public static BigInteger modPow2_unsafe(
      BigInteger base, BigInteger exponent, BigInteger modulus, int width) {
    BigInteger r0 = BigInteger.valueOf(1);
    BigInteger r1 = base;

    for (int i = 0; i < width; i++) {
      if (!exponent.testBit(width - i - 1)) {
        r1 = fastMultiply_inline(r0, r1).mod(modulus);
        r0 = r0.multiply(r0).mod(modulus);
      } else {
        r0 = fastMultiply_inline(r0, r1).mod(modulus);
        r1 = r1.multiply(r1).mod(modulus);
      }
    }
    return r0;
  }

  public static BigInteger fastMultiply_inline(BigInteger x, BigInteger y) {
    int xLen = x.bitLength();
    int yLen = y.bitLength();
    if (x.equals(BigInteger.ONE)) {
      return y;
    }
    if (y.equals(BigInteger.ONE)) {
      return x;
    }
    BigInteger ret = BigInteger.ZERO;
    int N = Math.max(xLen, yLen);
    int conditionObj0 = 800;
    int conditionObj1 = 32;
    if (N <= conditionObj0) {
      ret = x.multiply(y);
    } else if (Math.abs(xLen - yLen) >= conditionObj1) {
      ret = BigInteger.ZERO;
      for (int i = 0; i < y.bitLength(); i++) {
        if (y.testBit(i)) {
          ret = ret.add(x.shiftLeft(i));
        }
      }
    } else {

      N = (N / 2) + (N % 2);

      BigInteger b = x.shiftRight(N);
      BigInteger a = x.subtract(b.shiftLeft(N));
      BigInteger d = y.shiftRight(N);
      BigInteger c = y.subtract(d.shiftLeft(N));

      BigInteger ac = fastMultiply_1(a, c);
      BigInteger bd = fastMultiply_1(b, d);
      BigInteger crossterms = fastMultiply_1(a.add(b), c.add(d));
      ret = ac.add(crossterms.subtract(ac).subtract(bd).shiftLeft(N)).add(bd.shiftLeft(2 * N));
    }
    return ret;
  }

  public static BigInteger fastMultiply_1(BigInteger x, BigInteger y) {
    int xLen = x.bitLength();
    int yLen = y.bitLength();
    if (x.equals(BigInteger.ONE)) {
      return y;
    }
    if (y.equals(BigInteger.ONE)) {
      return x;
    }
    BigInteger ret = BigInteger.ZERO;
    int N = Math.max(xLen, yLen);
    int conditionObj0 = 800;
    int conditionObj1 = 32;
    if (N <= conditionObj0) {
      ret = x.multiply(y);
    } else if (Math.abs(xLen - yLen) >= conditionObj1) {

      ret = x.multiply(y);
    } else {

      N = (N / 2) + (N % 2);

      BigInteger b = x.shiftRight(N);
      BigInteger a = x.subtract(b.shiftLeft(N));
      BigInteger d = y.shiftRight(N);
      BigInteger c = y.subtract(d.shiftLeft(N));

      BigInteger ac = fastMultiply_1(a, c);
      BigInteger bd = fastMultiply_1(b, d);
      BigInteger crossterms = fastMultiply_1(a.add(b), c.add(d));
      ret = ac.add(crossterms.subtract(ac).subtract(bd).shiftLeft(N)).add(bd.shiftLeft(2 * N));
    }
    return ret;
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
