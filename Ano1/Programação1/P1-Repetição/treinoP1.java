import java.util.Scanner;


public class treinoP1 {
	
	public static void main (String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Piloto[] piloto = new Piloto[10];
		
		System.out.println("Gestão de uma prova automóvel.");
		System.out.println("1 - Inserir informação dos pilotos");
		System.out.println("2 - Listar pilotos ordenados pelo número da viatura");
		System.out.println("3 - Alterar informação de um piloto");
		System.out.println("4 - Remover piloto com base no número da viatura");
		System.out.println("5 - Remover piloto(s) com base no nome");
		System.out.println("6 - Validar matriculas");
		System.out.println("7 - Terminar o programa");
		int op;
		
		do{
			System.out.print("Opção -> ");
			op = sc.nextInt();
			switch(op){
				case 1 : infoPiloto(piloto);
					break;
				case 2 : ordNViatura(piloto);
					break;
				case 3 : altInfo(piloto);
					break;
				case 4 : removePilViatura(piloto);
					break;
				case 5 : removePilNome(piloto);
					break;
				case 6 : validarMat(piloto);
					break;
				case 7 : System.out.println("O programa vai terminar........ Terminou !!");
					break;
				default : System.out.println("Opção inválida !");
					break;
			}
		}while(op != 8);
	}
	
	public static void infoPiloto(Piloto[] piloto){
		Scanner ler = new Scanner(System.in);
		int k = 1;
		
		for(int i = 0; i < piloto.length ; i++){
			System.out.println("Introduzir dados do piloto.");
			System.out.print("Nome : ");
			String nome  = ler.nextLine();
			if(nome.equals(""))break;
			System.out.print("Matricula : ");
			String matricula = ler.nextLine();
			int nVia = k;
			k++;
			
			Piloto pil = new Piloto(nome, nVia, matricula);
			piloto[i] = pil; 
		}
	}
	public static void ordNViatura(Piloto[] piloto){
		//~ int tmp, i, j;
		//~ for(i = 0 ; i < piloto.length - 1 ; i++){ // fixamos uma posição
			//~ for(j = i + 1 ; j < piloto.length ; j++){ //percorremos as outras
				//~ if(piloto[i].viatura() > piloto[j].viatura()) // se mínimo, trocamos
				//~ {
				//~ tmp = piloto[i].viatura();
				//~ piloto[i] = piloto[j];
				//~ piloto[j].viatura() = tmp;
				//~ System.out.println(piloto[j].viatura());
				//~ }
			//~ }
		//~ }
	}
		
	public static void altInfo(Piloto[] piloto){
		
		Scanner ler = new Scanner(System.in);
		
		System.out.print("Aterar info do piloto com o nº de viatura : ");
		int n = ler.nextInt();
		
		for(int i = 0; i < piloto.length ; i++){
			if(piloto[i].viatura() == n){
				System.out.println("Deseja alterar o nome ou a matricula ?");
				String op = ler.nextLine();
				if(op.equals("nome")){
					System.out.println("Alterar o nome para : ");
					String nome = ler.nextLine();
					piloto[i].nome() = nome;
					
				}else if(op.equals("matricula")){
					System.out.println("Alterar a matricula para : ");
					String matricula = ler.nextLine();
					piloto[i].matricula() = matricula;
				}
			}
			
		}
		
	}
	public static void removePilViatura(Piloto[] piloto){}
	public static void removePilNome(Piloto[] piloto){}
	public static void validarMat(Piloto[] piloto){}

	
	
	
	
}

class Piloto {
	private int viatura;
	private String nome;
	private String matricula;
	
	public Piloto(String nome , int viatura , String matricula){
			this.viatura = viatura ;
			this.nome = nome;
			this.matricula = matricula;
			
	}
	
	public int viatura(){ return viatura; }
	
	public String nome(){ return nome;}
	
	public String matricula(){ return matricula; }
	
	
}


