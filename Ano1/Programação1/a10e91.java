import java.util.Scanner;
import java.io.*;

public class a10e91 {
	
	public static void main (String[] args) {
	Scanner sc = new Scanner (System.in);
	
		System.out.println("Análise de uma frase: ");
		System.out.print("Frase de entrada --> ");
		String frase = sc.nextLine(); // leitura da frase
			
		
			
		int M = 0, m = 0, d = 0, v = 0,con;
		
		for( int i = 0 ; i < frase.length()  ; i++)
		{
			char c = frase.charAt(i);
			
			if(Character.isUpperCase(c))
			{
				M++;
			}
			else if(Character.isLowerCase(c))
			{
				m++;
			}
			else if(Character.isDigit(c))
			{
				d++;
			}
			if(isVowel(c))
			{
				v++;
			}
			
		 }
			System.out.printf("O número de caracteres minúsculos é : %2d\n",m);
			System.out.printf("O número de caracteres maiúsculos é : %2d\n",M);
			System.out.printf("O número de digitos é :%2d\n ",d);
			
			
			System.out.printf("Número de vogais --> %2d\n",v);
			con=M+m-v;
			System.out.printf("Numero de consoantes --> %2d\n",con);
			
	}
	public static boolean isVowel(char c){
		boolean b= false;
		if( c=='a' || c=='e' || c=='i' || c=='o' || c=='u' || c=='A'|| c=='E'|| c=='I'|| c=='O'|| c=='U')
		{
			b=true;
		}
		
		return b;
	
	
	
	}
}

