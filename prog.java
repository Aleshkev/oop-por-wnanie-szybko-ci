
class Main {

  static int x1y1 = 0, x2y1 = 1, x1y2 = 2, x2y2 = 3;
  static long p = (long) 1e9 + 7;

  static long[] matrixMul(long[] a, long[] b) {
    return new long[] { //
        (a[x1y1] * b[x1y1] % p + a[x2y1] * b[x1y2]) % p,
        (a[x1y1] * b[x2y1] % p + a[x2y1] * b[x2y2]) % p,
        (a[x1y2] * b[x1y1] % p + a[x2y2] * b[x1y2]) % p,
        (a[x1y2] * b[x2y1] % p + a[x2y2] * b[x2y2]) % p };
  }

  static long[] matrixPow(long[] x, long n) {
    if (n == 1)
      return x;
    var y = matrixPow(x, n / 2);
    y = matrixMul(y, y);
    if (n % 2 == 1)
      y = matrixMul(y, x);
    return y;
  }

  static long fibonacci(long n) {
    if (n < 2)
      return n;
    final var origin = new long[] { 0, 1, 1, 1 };
    return matrixPow(origin, n - 1)[0];
  }

  public static void main(String[] args) {
    long sum = 0;
    long upto = (long) 1e7;
    for (var n = 0; n <= upto; ++n)
      sum = (sum + fibonacci(n)) % p;
    System.out.println("F(0) + F(1) + ... + F(" + upto + ") mod (" + p + ") = " + sum);
  }
}
