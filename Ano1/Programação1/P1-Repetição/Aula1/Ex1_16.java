import java.util.Scanner;


public class Ex1_16 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		double n,d1,d2,d3,d4,valTotal;
		
		System.out.printf("Digite o valor gasto no primeiro dia: ");
		n=sc.nextDouble();
		
		d1=(n+(0.20*n));
		d2=(d1+(0.20*d1));
		d3=(d2+(0.20*d2));
		valTotal=n+d1+d2+d3;
		
		System.out.printf("Ao longo dos quatro dias o turista gastou %4.2f€", valTotal);
	}
}

