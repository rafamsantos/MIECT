import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class SortInts
{
  public static void main(String[] args) throws IOException {
	File fich = new File(args[0]);
	SortedListInt list = new SortedListInt();
	
	Scanner sc = new Scanner(fich);
	while(sc.hasNextLine()){
	 String linha = sc.nextLine();
	 int inteiro = Integer.parseInt(linha);
	 list.insert(inteiro);
		
	}
	System.out.println(list);
  }

}


