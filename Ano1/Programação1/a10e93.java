import java.util.Scanner;
import java.io.*;

public class a10e93 {
	
	public static void main (String[] args) {
		Scanner ler = new Scanner (System.in);
		String frase;
		System.out.printf("Digite uma frase: ");
		frase=ler.nextLine();
		
		System.out.print("Número de palavras -> " + countWords(frase));	
			
			
			}
	public static int countWords(String frase)
	{
		int  pos=0, words=1;
		for(pos=0;pos<frase.length()-1;pos++)
		{
			char letter = frase.charAt(pos);
			char letter1 = frase.charAt(pos+1);
			if(letter!=' ' && letter1!=' ')
			{
				words=words+0;
			}
			else if(letter!=' ' && letter1==' ')
			{
				words++;
			}
			else if(letter!=' '&& letter1=='\n')
			{
				words++;
			}
			else if(letter==' ' && letter1!=' ')
			{
				words=words+0;
			}
			
			
		}
		return words;
		
		
	}
}

