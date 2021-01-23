
 import java.util.Scanner;


public class f2e21treino {
	
	public static void main (String[] args) {
		
		Scanner kb = new Scanner(System.in);
		
		System.out.print("Nota do 1º teste: ");
		double a = kb.nextDouble();			
		
		System.out.print("Nota do 2º teste: ");
		double b = kb.nextDouble();
		
		System.out.print("Nota do 3º teste: ");
		double c = kb.nextDouble();
		double d;
		d = a*0.20+b*0.30+c*0.50;
		
	if(d<9.5) {
		System.out.print("Aluno reprovado");
	}
	else {
		System.out.print("Aluno aprovado ");
	}
		
		
	}
}

