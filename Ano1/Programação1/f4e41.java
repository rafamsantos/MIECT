
import java.util.Scanner;

public class f4e41 {
	
	public static void main (String[] args) {
		Scanner kb= new Scanner(System.in);
		int n=1 ;
		int cont=0;
		
		
		while ( n>=0)
		{   
			System.out.print("introduza um nº:");
		    n = kb.nextInt();
			if(n>0) cont++;
			 
		}
		System.out.printf("Foram introduzidos %d numeros inteiros positivos\n",cont);
		
		
		
		
	}
}

