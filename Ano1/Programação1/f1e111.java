
import java.util.Scanner;

public class f1e111{
	
	public static void main (String[] args) {
		Scanner kb=new Scanner(System.in);
		
		System.out.print("introduza um valor em dolar :  ");
		
		double d = kb.nextDouble();
		
		
		double e = d*0.91;

System.out.print( d + " dólares é equivalente a " + e + " euros "  );

	}

}

