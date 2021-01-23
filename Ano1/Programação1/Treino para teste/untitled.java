import java.io.*;
import java.util.*;
public class untitled {
	
	public static void main (String[] args) throws IOException {
	Aluno[] alunos;
	String s;
	alunos = lerFich("t3.txt");
	printArray(alunos,"Lista de Alunos: ");
	
	procurarPalavra(alunos);
	
	escreverFich(alunos,"t3.txt");
	alunos = lerFich("t3.txt");
	printArray(alunos,"Lista de alunos");
	
	}
	
	
	public static String retirarEspacos(String s){ // 4valores
		//~ String r="";
		//~ char anterior = ' ';
			//~ for (int i=0; i<s.length(); i++) {
				//~ if (!(s.charAt(i) == ' ' && anterior == ' ')){
					//~ r=r+s.charAt(i);
				//~ }
					//~ anterior = s.charAt(i);
				//~ }
				//~ return r;
		return s.replaceAll("\\s+", " ");
	}
	public static Aluno[] lerFich(String nome) throws IOException { //5valores
		File F = new File(nome);
		Scanner scf = new Scanner(F);
			int cont=0;
			//Contar as linhas
			while(scf.hasNextLine()){
					cont++;
					scf.nextLine();
			}
			//Criar array com x numero de linhas
			Aluno[] lista = new Aluno[cont];
			scf.close();
			
			//Escrever no Array
			int i=0;
			scf = new Scanner(F);
			while(scf.hasNextLine()){	
				lista[i] = new Aluno();
				lista[i].numero = scf.nextInt();
				lista[i].nome = scf.nextLine();
				lista[i].nome = retirarEspacos ( lista[i].nome.trim() );
				i++;
			}
			return lista ;
	}
	public static void printArray(Aluno[] x,String mensagem){ //2valores
		
		System.out.println(mensagem);
		for(Aluno v: x){
			
			System.out.printf("%d %s\n",v.numero,v.nome);
		}
	}
	public static void procurarPalavra(Aluno[] x){ //4valores
		
		Scanner ler = new Scanner(System.in);
		System.out.print("________________________\n");
		System.out.println("O que pesquisar: ");
		String s = ler.nextLine();
		System.out.print("________________________\n");
		
		for(int i=0;i<x.length;i++){
			String m = x[i].numero + x[i].nome ;
			if(m.indexOf(s) != -1){
				System.out.printf("%d %s\n",x[i].numero,x[i].nome);
			}
		}
		System.out.print("________________________\n");
		
	}
	public static void escreverFich(Aluno[] alunos,String nome) throws IOException { //2valores
		File F = new File(nome);
		Scanner ler = new Scanner(System.in);
		System.out.print("Nome do aluno: ");
		String name = ler.nextLine();
		System.out.print("Numero do aluno: ");
		String numero = ler.nextLine();
		
		String soma ="\n" + numero + " " + name;
		
		FileWriter fw = new FileWriter(F,true);
		fw.write(soma);
		fw.close();
	}
	public static String ficheiroparaString(String nome,int i) throws IOException{ //3 valores
		File F = new File(nome);
		Scanner scf = new Scanner(F);
		String novo ="";
				int k=0;
				while(scf.hasNextLine()){
					if(i == k){
						novo = scf.nextLine();
						break;
					}
					else{
					scf.nextLine();
					}
					k++;
				}
				return novo;
				
	}
}


class Aluno{
	int numero;
	String nome;
}


