import java.util.Scanner;
import java.io.*;

public class a7e71 {
	
	public static void main (String[] args) throws IOException{
		Scanner sc = new Scanner (System.in);

	boolean valid_file;
	valid_file=true;
	File fin;
	String nameIn;
	
	do{
	   valid_file=true;
	   System.out.println("Qual o ficheiro que pretende ler?");
	   nameIn=sc.nextLine();
	   fin = new File(nameIn);
		
			if(fin.isFile()==false)
			{
				System.out.printf("%s não é um ficheiro !!",nameIn);
				
				valid_file=false;
			}
			else if (fin.canRead()==false)
			{
				System.out.printf("%s não é um ficheiro !!/n",nameIn);
				valid_file= false;
			}
	 } while(valid_file==false);
	   
	   System.out.println("Ficheiro valido !!");
		
		Scanner scf = new Scanner(fin);
		String[]t = new String[20];
		int i = 0;
		
		do{
			t[i] = scf.nextLine();
		    i++;
		   }
		while(i<t.length && scf.hasNextLine());
		
		System.out.println("Conteudo do ficheiro:");
		
		for (int j = 0 ; j<i ; j++)
		{
			System.out.println(t[j]);
		}
		 System.out.println("Ficheiro de saída: ");
		 String nameOut=sc.nextLine();
		 
		 File fout = new File(nameOut);
		 
		 PrintWriter pw = new PrintWriter(fout); 

		for (int j = 0 ; j<i ; j++)
		{
			pw.println(t[j]);
		}
		pw.close();
  }
}

