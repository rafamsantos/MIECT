


import java.util.Scanner;

public class teste {
	
	public static void main (String[] args) {
		
		Scanner kb=new Scanner(System.in);
		
		System.out.print("introduza um valor em segundos ");
		
		int s = kb.nextInt();
		
		int h= s/3600;
		//Segundos que restam aquando a hora completa 
		int sr = s%3600;
		//Minutos compostos pelos segundos restantes
		int m = sr/60;
		
		
		
		System.out.print( h + " horas " + m + " minutos ");
		
		
		
		
		
	}
}

