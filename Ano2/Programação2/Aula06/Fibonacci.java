import static java.lang.System.*;

public class Fibonacci {

  public static void main(String[] args) {
    if (args.length < 1) {
      out.println("USO: java -ea Fibonacci N [N ...]");
      exit(1);
    }

    // Alguns testes:
    assert fibonacci(0) == 0;
    assert fibonacci(1) == 1;
    assert fibonacci(2) == 1;
    assert fibonacci(5) == 5;

    for(int i = 0; i < args.length; i++) {
      int n = Integer.parseInt(args[i]);
      long time = nanoTime();  // System.nanoTime() gives the time in ns.
      int f = fibonacci(n);
      int fi = getFibonacciNumberBottomUpWithoutCache(n);
      time = nanoTime() - time;
      out.printf("fibonacci(%d) = %d (%d ns)\n", n, f, time);
      out.printf("Fibonacci(%d) = %d (%d ns)\n", n, fi, time);
    }
  }

  public static int fibonacci(int n) {
    assert n >= 0;	
    if(n == 0){
		return 0;
	}else if(n == 1){
		return 1;	
	}else{
		return fibonacci(n-2)+fibonacci(n-1);
		}
		
  }
  public static int getFibonacciNumberBottomUpWithoutCache(int n) {
    int fnMin2 = 0;
    int fnMin1 = 1;
    int sum = 0;
    for(int i = 2; i <= n; i++) {
      sum = fnMin1 + fnMin2;
      fnMin2 = fnMin1;
      fnMin1 = sum;
    }
    return sum;
  }

}
