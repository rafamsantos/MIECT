import java.util.Scanner;
import java.io.*;


public class ficheirostreino {
	
	public static void main (String[] args)throws IOException {
	Scanner kb = new Scanner(System.in);
	
	//CRIAR E ESCREVER NUM FICHEIRO
		//~ File meu_ficheiro=new File("meuFicheiro.txt");
		//~ PrintWriter pw = new PrintWriter(meu_ficheiro);
		//~ pw.println("Olá, vou a recurso a p1");
		//~ pw.close();
	
	// LER FICHEIROS
		String 	name_of_file,	line_of_text;
     System.out.print("Nome do ficheiro: ");
     name_of_file = kb.nextLine();
     File my_file = new File(name_of_file);
     //~ PrintWriter pw = new PrintWriter(my_file);
     //~ for(;;) {
         //~ System.out.print("Linha para escrever: ");
         //~ line_of_text = kb.nextLine();
         //~ if (line_of_text.compareToIgnoreCase("End") == 0)  break;
         //~ pw.println(line_of_text);
	         //~ }
       //~ pw.close();
	}
}

