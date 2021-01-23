import java.util.Scanner;
import java.io.*;


public class e11_4treino{
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		int c;
		contacto a[]= new contacto[20]; 
		System.out.println("Gestão de uma agenda: ");
		System.out.println("1 - Inserir um contacto");
		System.out.println("2 - Pesquisar contacto por nome");
		System.out.println("3 - Eliminar um contacto");
		System.out.println("4 - Mostrar os contactos");
		System.out.println("5 - Mostrar contactos Ordenados pelo nome");
		System.out.println("6 - Validar endereços de email");
		System.out.println("7 - Apagar a agenda");
		System.out.println("8 - Terminar o programa");
		
		
		do{
			System.out.print("Opção --> ");
			c = sc.nextInt();
			
			
			switch(c){
				case 1 :inserir(a);
					break;
				case 2 : pesquisar(a);
					break;
				case 3 : eliminar(a);
					break;
				case 4 : mostrar(a);
					break;
				case 5 : OrdenarNome(a);
					break;
				case 6 : validar(a);
					break;
				case 7 : apagar(a);
					break;
				case 8 : System.out.println("O programa terminou");
					break;
				default : System.out.println("Opção inváĺida !!");
					break;
				}
		}while (c!=8);
		
		
	}
	public static void inserir(contacto a[]){
		
		Scanner ler = new Scanner(System.in);
		contacto f= new contacto();
		
		int i;
		for(i = 0; i<a.length ; i++){
			 if(a[i]==null)
			 {
				 break;
			 }
		 }
		
		System.out.print("NOME --> ");
		f.nome = ler.nextLine();

		
		System.out.print("MORADA --> ");
		f.morada = ler.nextLine();
		
		
		System.out.print("TELEFONE -->");
		f.telefone=ler.nextInt();
		f=a[i];
		
		
		}
	public static void pesquisar(contacto a[]){}
	public static void eliminar(contacto a[]){}
	public static void mostrar(contacto a[]){}
	public static void OrdenarNome(contacto a[]){}
	public static void validar(contacto a[]){}
	public static void apagar(contacto a[]){}
	
}
class contacto{
	String nome,morada;
	int telefone;

	
	
	}


