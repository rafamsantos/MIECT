import java.util.Scanner;
import java.io.*;

public class f11e11_1 {
		
		static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		String[] lista = new String[10]; //array de strings
		int n  = leFrases(lista);
		System.out.print("Resultado: ");
		for(int k = n-1; k>=0; k--)
		{
			System.out.println(inverte(lista[k]));
		}
		
	}
	public static int leFrases (String[] lista){
			String s;
			int n=0;
				do {
					System.out.printf("Introduza a %2d frase : \n ",n+1);
					s = sc.nextLine();
					if(s.compareTo("fim")!=0){
						lista[n]=s;
						n++;
						}
					}
				while(s.compareTo("fim")!=0 && n<lista.length);
			return n;
		} 
		
	public static String inverte(String in){
		String out=new String();
		char c;
		for( int i = in.length()-1 ; i>=0 ; i-- ){
		c=in.charAt(i);
		out+=c;	
		}		
	return out;
}
}

