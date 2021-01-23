import java.util.Scanner;
import java.io.*;


public class problema3 {
	
	static Scanner sc = new Scanner(System.in); 
	
	public static void main (String[] args) {
		int i,opcao;
		Robot a[] = new Robot[10];
		Scanner sc = new Scanner(System.in); 

		
		
			System.out.println("Micro-Rato 2013 - Gestão da prova: ");
			System.out.println("1 - Adicionar informação relativa a um robô");
			System.out.println("2 - Imprimir informação dos robôs em prova");
			System.out.println("3 - Vencedor da prova e tempos médios de prova");
			System.out.println("4 - Média do número de elementos por equipa");
			System.out.println("5 - Mostrar o nome dos robôs em maiúsculas");
			System.out.println("6 - Alterar informação de um robô");
			System.out.println("7 - Remover robôs da competição");
			System.out.println("8 - Gravar informação da prova num ficheiro");
			System.out.println("9 - Terminar o programa c");
			
		do{
			System.out.print("Opção -> ");
			i = sc.nextInt();
			System.out.println();
			opcao=i;
			switch (opcao){
				case 1: Adicionar(a);
					break;
				case 2: imprimeInfo(a);
					break;
				case 3: vencedorTempos(a);
					break;
				case 4: mediaElementos(a);
					break;
				case 5: maiusculas(a);
					break;
				case 6: alterarInfo(a);
					break;
				case 7 : remover(a);
					break;
				case 8: ficheiro(a);
					break;
				case 9 :
					System.out.println("Fim do programa");
					System.out.println("Adeus!!");
				default : System.out.println("Opção não válida");
			}
		}while(i!=9);


	}

	public static void Adicionar(Robot a[])
	{
		
		Scanner ler = new Scanner(System.in);
		int i;
		for(i = 0; i<a.length ; i++){
			 if(a[i]==null)
			 {
				 break;
			 }
		 }
			 
		
		Robot f = new Robot();
		System.out.println("Nome do Robô: ");
		f.nome=ler.nextLine();
		System.out.println("Tempo de prova em segundos: ");
		f.media= ler.nextInt();
		System.out.println("Número de Elementos da equipa: ");
		f.elementos=ler.nextInt();
		a[i]=f;
		System.out.println();
		
	}
		
		
		
	
	public static void imprimeInfo(Robot a[]){
		
		int i=0, j=0;
		Horas h = new Horas();
		
		for(i=0;i<a.length;i++)
		{
			if(a[i]==null)
			{
				break;
			}
		}
		for(j=0;j<i;j++)
		{
			if(a[j].nome!=null)
			{
				System.out.printf("\nNome do Robô: " + a[j].nome);
				h.hora=(int)(a[j].media/3600);
				h.minuto=(int)((a[j].media-(h.hora*3600))/60);
				h.segundo=(a[j].media-(h.hora*3600)-(h.minuto*60));
				System.out.printf("\nTempo de Competição: %d:%d:%d", h.hora, h.minuto, h.segundo);
				System.out.printf("\nNúmero de Elementos: " + a[j].elementos + "\n");
				System.out.println();
			}
			else if(a[j].nome==null)
			{
			}			
		}			
			
			
			
	}
		
		

	public static void vencedorTempos(Robot a[]){}
	
	public static void mediaElementos(Robot a[]) {
		
		int media;
		int z = 0;
		int soma = 0;
		int j;
		int i = 0;
		
		for (i = 0; i<a.length ; i++){
			if(a[i]==null){
					break;
				}
			}
		for (j = 0 ; j<i ;j++){
			soma= soma + a[j].elementos;
			z++;
			}  
		
		media = soma/z;
		System.out.printf("A média de elementos por equipa é : %2d \n ",media);
		System.out.println();
		
		
		
		}
	public static void maiusculas(Robot a[]){
		int i ;
		int j =0;
		for(i=0 ; i<a.length ;i++){
				if(a[i]==null){
				break;
			}
		}
		for (j = 0; j<i ; j++){
			System.out.println("o Nome do robot em maiúsculas é: "+a[j].nome.toUpperCase())	;		
			}
			System.out.println();
		}
	public static void alterarInfo(Robot a[]){}
	public static void remover(Robot a[]){}
	public static void ficheiro(Robot a[]){}
	
}

class Robot{
	String nome;
	int media;
	int elementos;
	
	
}
class Horas{
	int hora;
	int minuto;
	int segundo;
	}


	


