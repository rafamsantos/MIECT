import java.util.Scanner;
import java.io.*;


// >> java7e72 FicheiroComNumeros.txt
public class a7e72 {
		
		static Scanner sc = new Scanner(System.in);
		
	public static void main (String[] args) throws IOException {
		int[]a=new int[100];
		int dim = leitura(a,args[0]); //leitura dos valores para o array
		// verificação
		System.out.println("Numeros positivos no ficheiro : ");
		for (int i= 0; i<dim ; i++)
		{ 
			System.out.println(a[i]);
		}
	//Procura de numero
	System.out.println("Qual o numero a procurar?");
	int num= sc.nextInt();
	System.out.println("O numero "+ num + " aparece " + count(num,a,dim) +" vezes ");
	
	}
	
	
	public static int leitura(int[]a,String nameIn)throws IOException{
	File fin = new File(nameIn);
	Scanner scf = new Scanner(fin); //Scanner associado ao ficheiro
	int i =0,n;
	
	while(scf.hasNextInt() && i<a.length){
		n=scf.nextInt();
			if(n>0)
			{
				a[i]=n;
				i++;
			}
			}
			scf.close();
			return i;
		}
	
	public static int count(int num ,int[]a,int dim){
		int c=0;
		for(int j = 0; j<dim ; j++){
			if(a[j]==num)c++;
			}
			return c;
		 
	}
	

}

