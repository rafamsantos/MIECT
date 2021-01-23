import java.lang.System.*;
import java.util.Scanner;
import java.io.*;



public class CopyFile {
	
	public static void main (String[] args)throws IOException {
		Scanner sc = new Scanner(System.in);		
		File f = new File("Texto1.txt");
		Scanner fich =new Scanner(f);
		System.out.println("Deseja ver o conteúdo do ficheiro? sim/nao ");
		String op = sc.nextLine();
		if (op == "sim"){
			while(fich.hasNextLine()){
				String linha = fich.nextLine();
				System.out.println(linha);
				fich.close();
}
			}else if (op=="nao"){
				System.out.println("Sigamos em frente");
				}
		
		
	}
}

