import java.util.Scanner;
import java.io.*;


public class treinoStrings2{
	
	static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		String frase;
		System.out.print("Introduza uma frase ->>");
		frase = sc.nextLine();
		acronimo();
		
	}
	
	public static char acronimo(){
		String frase;
		char M;
		for(int i = 0 ; i < frase.length() ; i++){
			char c = frase.charAt(i);
			if(Character.isUpperCase(c))
			{
				System.out.printf("%2d",M);

			}
		}	
		return M;
		
	}
}

