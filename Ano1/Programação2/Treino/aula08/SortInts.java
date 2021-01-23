import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class SortInts
{
  public static void main(String[] args) throws IOException {
	
	File f = new File(args[0]);
	Scanner sc = new Scanner(f);
	SortedListInt sli = new SortedListInt();
	
	while(sc.hasNextLine()){
		try{
			String line = sc.nextLine();
			int num = Integer.parseInt(line);
			sli.insert(num);
		}catch(NumberFormatException exception){
			continue;
		}
	}
		
	while(sli.size()!= 0){
		System.out.println(sli.first());
		sli.removeFirst();
	}
	
  }
}
