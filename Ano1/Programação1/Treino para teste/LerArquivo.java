import java.io.*;
import java.util.Scanner;

public class LerArquivo {
		static Scanner kb = new Scanner (System.in);
 public static void main(String[] args) throws IOException
 {   String name_of_file;
     System.out.print("Nome do ficheiro: ");
     name_of_file = kb.nextLine(); 
     File my_file = new File(name_of_file);
     Scanner read_from_file = new  Scanner(my_file);
     while(read_from_file.hasNextInt())
       System.out.println(read_from_file.nextInt());
     read_from_file.close();
	}
}

