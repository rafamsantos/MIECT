
import java.util.Scanner;

public class Functions2{
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
   public static void leitura (int[]a) {
	 
	 for(int i=0;i<a.length;i++) {
		 System.out.print("Introduza um valor: ");
		 a[i]=sc.nextInt(); 

}
}

   public static void imprimeInv (int a[]) {
   for (int i=a.length-1; i>=0;i--){
   System.out.println(a[i]);

}

}


}
