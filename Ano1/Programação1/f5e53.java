import java.util.Scanner;


public class f5e53 {
    public class Functions {
    static Scanner sc = new Scanner(System.in);

	public static void main (String[] args) {
		
int N = Functions.getIntPos("Qual a quantidade de elementos: ");		
	//declaração e inicialização do	array
	//Após esta declaração , tem sempre esta dimensão (N);
	
int[]a = new int[N];
	//leitura dos calores para o array - passado por ref.(in/out);
	leitura (a);
		
	//impressão dos valores do array pela ordem inversa 
		System.out.println("Lista na ordem inversa : ");
		imprimeInv(a);
		
		
		
		
		
	}
}

}
