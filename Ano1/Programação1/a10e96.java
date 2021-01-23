import java.util.Scanner;
import java.io.*;

public class a10e96 {
	
	public static void main (String[] args) {
		Scanner ler = new Scanner (System.in);
		String fr , resp;
		int pos=0, posl=0;
		
		
		do
		{
			System.out.printf("Digite uma frase: ");
			fr=ler.nextLine();
			fr = fr.replaceAll("l","u");
			fr = fr.replaceAll("L","U");
			fr = fr.replaceAll("r","");
			fr = fr.replaceAll("R","");
			System.out.print(fr); 
			
			System.out.printf("\nDeseja repetir (s/n) ? ");
			resp=ler.nextLine();
			switch(resp)
			{
				case "n":
				System.out.printf("Fim da tradução");
				break;
				
				case "s":
				break;
				
				default:
				System.out.printf("Resposta Inválida");
				break;
			}
		}
		while(resp.equals("s"));	

 }
}
		



