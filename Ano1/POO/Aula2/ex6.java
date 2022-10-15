package Aula2;
import java.util.*;

public class ex6 {
    public static void main(String[] args){
        Scanner ler = new Scanner(System.in);
		double tmp;
		double horas, minutos, segundos, resto;
		
		System.out.printf("Digite o tempo em segundos : ");
		tmp = ler.nextDouble();
		
		horas = (int)(tmp/3600);
		resto = tmp - (horas * 3600);
		minutos = (int)(resto/60);
		segundos = resto - (minutos*60);
		
		
		System.out.printf ("%3.0f segundos -> %3.0f h : %3.0f m :  %3.0f s",tmp, horas, minutos, segundos);
		
		ler.close();
		
    }
    
}
