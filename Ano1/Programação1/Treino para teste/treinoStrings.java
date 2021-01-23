import java.util.Scanner;
import java.io.*;
public class treinoStrings {
	static Scanner sc= new Scanner(System.in);
	public static void main (String[] args) {
		String frase;
		System.out.println("Análise de uma frase");
		System.out.print("Frase de Entrada ->> ");
		frase = sc.nextLine();   //leitura da frase
		
		int M=0,m=0,d=0;
	
		for(int i = 0 ; i<frase.length() ; i++){
			 char c= frase.charAt(i);
			 
			 if(Character.isLowerCase(c))
			 {
				
				m++;
			 }
			 else if(Character.isUpperCase(c))
			 {
				 M++;
			 }
			 else if(Character.isDigit(c)) 
			 {
				 d++;
			 }
		}
		System.out.printf("O número de carateres minúsculos é %2d : \n",m);
		System.out.printf("O número de carateres Maiúsculos é %2d : \n",M);
		System.out.printf("O número de dígitos é %2d : \n",d);
	
	
	}
}

