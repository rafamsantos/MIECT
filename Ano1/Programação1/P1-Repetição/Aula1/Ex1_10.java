import java.util.Scanner;

public class Ex1_10 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		
		System.out.print("Introduza um valor em celsius : ");
		double cel = sc.nextDouble();

		double f = 1.8*cel + 32;
		
		System.out.println("O valor em celsius de " + cel + " corresponde a  " + f + " em fahrenheit ");
		
	}
}

