import java.util.Scanner;
import java.io.*;


public class a12exemplosteste{
		static Scanner sc = new Scanner(System.in); 
	public static void main (String[] args)throws IOException {
		int n;
		int opcao;
		String []p = new String [31];
		String s;
		
		do{
			System.out.println("Estação meteorológica: ");
			System.out.println("1-Ler Ficheiro de dados");
			System.out.println("2-Acrescentar medida");
			System.out.println("3-Listar valores de temperatura e humidade");
			System.out.println("4-Listar medida ordenadas por valor de temperatura");
			System.out.println("5-Listar medidas ordenadas por valor de humidade");
			System.out.println("6-Calcular valores médios de temperatura e humidade");
			System.out.println("7-Calcular valores máximos e mínimos de temperatura e humidade");
			System.out.println("8-Calcular o histograma das temperaturas e humidade");
			System.out.println("9-Terminar o programa");
			System.out.print("opção -> ");
			n = sc.nextInt();
	
	
			//~ do
			//~ {
				//~ s = sc.nextLine();
			//~ }while(s.length()==0);    //não esquecer!!!
	
			opcao=n;
			
			switch(opcao){
				case 1 : lerFicheiro();
					break;
				case 2 : acrescentarMedida();
					break;
				case 3 : valoresTeH();
					break;
				case 4 : tempOrdenada(); 
					break;
				case 5 : humOrdenada();
					break;
				case 6 : mediaTeH();
					break;
				case 7 : MaxeMinTeH();
					break;
				case 8 : histTeH();
					break;
				case 9 : System.out.println("Fim do programa \n Adeus !!");
					break;
		}
		}while (n!=9);
			
	}
	public static void lerFicheiro() throws IOException{
		Scanner kb = new Scanner (System.in);

	boolean valid_file;
	valid_file=true;
	File fin;
	String nameIn;
	
	do{
	   valid_file=true;
	   System.out.println("Qual o ficheiro que pretende ler?");
	   nameIn=kb.nextLine();
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
		System.out.println();
		Scanner scf = new Scanner(fin);
		String[]t = new String[20];
		int i = 0;
		
		do{
			t[i] = scf.nextLine();
		    i++;
		   }
		while(i<t.length && scf.hasNextLine());
		
		System.out.println("Conteudo do ficheiro:");
		System.out.println();
		for (int j = 0 ; j<i ; j++)
		{
			System.out.println(t[j]);
		}
		
		
	}
	public static void acrescentarMedida()throws IOException{}
	public static void valoresTeH(){}
	public static void tempOrdenada(){}
	public static void humOrdenada(){}
	public static void mediaTeH(){}
	public static void MaxeMinTeH(){}
	public static void histTeH(){}	
}
class cidade{
	int temperatura;
	int humidade;
	String nome;
	}
	


