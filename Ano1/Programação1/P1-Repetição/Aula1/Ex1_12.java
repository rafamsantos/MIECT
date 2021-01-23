import java.util.Scanner;

public class Ex1_12 {
	
	public static void main (String[] args) {
		Scanner ler = new Scanner(System.in);
		double tmp;
		double horas, minutos, segundos, resto1, resto2;
		
		System.out.printf("Digite o tempo em segundos : ");
		tmp = ler.nextDouble();
		
		horas = (int)(tmp/3600);
		resto1 = tmp - (horas * 3600);
		minutos = (int)(resto1/60);
		segundos = resto1 - (minutos*60);
		
		
		System.out.printf ("%3.0f segundos -> %3.0f h : %3.0f m :  %3.0f s",tmp, horas, minutos, segundos);
		
		
		
		
		
	}
}

