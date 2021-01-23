import java.util.Scanner;

public class Ex1_15 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Cálculo da nota final de um aluno de Programação 1");

		System.out.println("1º teste teórico : ");
		double t1 = sc.nextDouble();
		System.out.println("2º teste teórico : ");
		double t2 = sc.nextDouble();
		System.out.println("3º teste teórico : ");
		double t3 = sc.nextDouble();
		System.out.println("1º teste prático : ");
		double p1 = sc.nextDouble();
		System.out.println("2º teste prático : ");
		double p2 = sc.nextDouble();
		
		double notaFinal =  t1*0.10 + t2*0.10 + t3*0.10 + p1*0.25 + p2*0.35;
		
		System.out.println("A nota final do Aluno é : "+notaFinal);
		
		if(notaFinal < 9.5 ){
			System.out.println("O aluno reprovou ");
		}
		else{
			System.out.println("O aluno ficou aprovado");
		}
		
	}
}

