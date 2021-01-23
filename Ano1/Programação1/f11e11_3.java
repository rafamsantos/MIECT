import java.util.Scanner;
import java.io.*;

public class f11e11_3 {
	
	static Scanner sc= new Scanner(System.in);
	
	public static void main (String[] args) {
		String[]contactos = new String[100];
		String s;
		char opcao;
		int n;
		do{
			System.out.println("I - Inserir um contacto");
			System.out.println("P - Pesquisar contacto por nome");
			System.out.println("E - Eliminar um contacto");
			System.out.println("M - Mostrar os contactos");
			System.out.println("O - Mostrar contactos Ordenados pelo nome");
			System.out.println("V - Validar endereços de email");
			System.out.println("A - Apagar a agenda");
			System.out.println("T - Terminar o programa");
			
			do
			{
				s = sc.nextLine();
			}while(s.length()==0);  //não esquecer!!!
		
		
		opcao=s.charAt(0);
		
		switch(opcao){
		case 'I': n= insere(agenda,n);
			break;
		case 'P': n= pesquisa(agenda,n);
			break;
		case 'E': n= eliminar(agenda,n);
			break;
		case 'M': n= mostrar(agenda,n);
			break;
		case 'O': n= mostrar(agenda,n);
			break;
		case 'V': n= validar(agenda,n);
			break;
		case 'A': n= apagar(agenda,n);
			break;
		case 'T': System.out.println(" Adeus!! ");
			break;	
		default :
			System.out.println("valor inválido");
		}
			
			
		} while(opcao !='T');
		
	}
	public static int insere(Contacto[]a ,int i){
		
		a[i]= new Contacto();    
		System.out.println("Nome :");
			a[i].nome=sc.nextLine();
		System.out.print("Morada");
			a[i].morada=sc.nextLine();
		System.out.print("Número: ");
			a[i].telef=sc.nextInt();
		System.out.print("email : ");
			a[i].email=sc.nextLine();
			return i+1;
			
	}
	//~ public static void pesquisa(Contacto[]a,int n){
	//~ }
	//~ public static int eliminar(Contacto[]a,int n){
	//~ }
	//~ public static void mostrar (Contacto[]a,int n){
	//~ }
}
class Contacto{
	String nome,morada,email;
	int telef;
	
	}
