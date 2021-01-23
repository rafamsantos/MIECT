import java.util.Scanner;

public class ex63 {
	
	static Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		int a[] = new int[50];
		
		int b =leitura(a);
		
		System.out.println();
		
		printSequencia(a,b);
		
		System.out.println();
		
		int c = encontrarMax(a,b);		
			System.out.printf("O máximo da sequência é %d.\n" ,c);
		
		int d = encontrarMin(a,b);		
			System.out.printf("O mínimo da sequência é %d.\n" ,d);
		
		double m = calc_media(a,b);
		System.out.printf("A média da sequência é: %3.3f " ,m);
	
		boolean par = e_par(a,b);
		
		if(par){
		
			System.out.println("É par");		
		
		}else{
		
			System.out.println("É impar");		
		}
	} 

	public static int leitura(int []a_dentro) {
		int i=0;
		int n=1;
		
		while(i<a_dentro.length && n!=0) {
		
		n = sc.nextInt();
		if(n==0) {
		  break;
		}
		
		a_dentro[i]=n;		
		i++;
		
			
		}
		return i;
}
	public static void printSequencia(int []a, int b) {
		
		int i=0;
		
		
		while(i<b) {
		System.out.println(a[i]);
		i++;
		}
		
	}
	
	public static int encontrarMax(int []a, int b) {
		
		int i=0;
		int valorTeste=a[0];
		
		while(i<b) {						
			valorTeste = Math.max(valorTeste, a[i]);
			
			i++;
			}
		return valorTeste;
			
		}
	
	public static int encontrarMin(int []a, int b) {
		
		int i=0;
		int valorTeste=a[0];
		
		while(i<b) {						
			valorTeste = Math.min(valorTeste, a[i]);
			
			i++;
			}
		return valorTeste;
			
		}
	
	public static double calc_media(int []a, int b) {
		
		int soma = 0;
		
		for (int i = 0; i<b; i++) { //CALCULAR SOMA TOTAL DO ARRAY 
			soma += a[i];
		}

		double media = ((double)soma / b); //DIVIDIR PELO NUMERO DE NÚMEROS NO ARRAY
	
		return media;
	
	}	
	
	public static boolean e_par(int []a, int b) {
		
		for(int i = 0; i<b; i++){
		
			if(a[i] % 2 != 0){ // UM NUMERO É PAR QUANDO A SUA DIVISÃO POR 2 NÃO TEM RESTO
				return false;			
			}			

		}

		return true;
	}
}


