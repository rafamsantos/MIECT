import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class SortInts
{
  public static void main(String[] args) throws IOException {
	File fich = new File(args[0]);
	int inteiro;
	SortedListInt list = new SortedListInt();
	if(!fich.isFile()){
		System.out.println("O ficheiro não existe");
	}
	else{
		Scanner sc = new Scanner(fich);
		
		while(sc.hasNextLine()){
			String linha = sc.nextLine();
			inteiro = Integer.parseInt(linha);
			list.insert(inteiro);
		}
			
		while(!list.isEmpty()){
				System.out.println(list.first());
				list.removeFirst();	
	}	 
  }
 }
}


