import java.util.Scanner;


public class Ex1_17 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Valor total dos produtos : ");
		double valTotal = sc.nextInt();
		System.out.print("Desconto oferecido( < 1 ) :  ");
		double desc = sc.nextDouble();
		System.out.print("Taxa de iva ( < 1 ) : ");
		double iva = sc.nextDouble();
		
		double totLiquido = valTotal + valTotal*iva - valTotal* desc;
		
		System.out.println("O valor total liquido da fatura é de "+totLiquido);
		
		
	}
}

