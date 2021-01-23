import java.util.Scanner;
import java.io.*;


public class a10e92 {
	
	public static void main (String[] args) {
		Scanner sc= new Scanner(System.in);
		String nome,acr;

			do
			{
			System.out.println("Nome: ");
			nome = sc.nextLine();	
			acr = acronimo(nome);
			System.out.println("Acrónimo "+acr);
			}
			 while(nome.length()!=0 );
}
		
		
		
	
	public static String acronimo(String in){
		String acr="";
		char c;
		for(int i = 0; i < in.length() ; i++)
		{
			c = in.charAt(i);
			if(Character.isUpperCase(c))
			{
				acr= acr+c;
			}
			
		}
		return acr;
		
	}
}

