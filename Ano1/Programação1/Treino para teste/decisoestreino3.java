import java.util.Scanner;


public class decisoestreino3 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner (System.in);
		int d;
		
		System.out.println("Idade do passageiro: ");
			d=sc.nextInt();
			
			
		if (d<6){
			System.out.println("Isento de bilhete");
		}
		else if(d>=6 && d<=12){
			
		System.out.println("Bilhete de criança");
	}
		else if (d>=13 && d<=65){
			System.out.println("Bilhete de adulto");
		}
		else {
			System.out.println("Bilhete de 3ª idade");
		}
		
		
		
		
		
		
	}
}

