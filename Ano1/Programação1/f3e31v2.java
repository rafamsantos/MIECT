import java.util.Scanner;


public class f3e31v2 {
	
	public static void main (String[] args) {
		Scanner kb = new Scanner (System.in);
		
		int n=0;
	   
		
		//validação do valor de entrada
		do{
		n= kb.nextInt();
		System.out.print("Quantas vezes pretende escrever a mensagem? ");
			if(n<=0)
			System.out.println("Tem de introduzir valor inteiro positivo ...");
			
			} while (n<=10);
		
		//saida
		
		for(int i=1 ; i<=n ; i++)
		{
			System.out.println("P1 é fixe");
		
	}
	}
}

