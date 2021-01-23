import java.util.Scanner;


public class semtitulo{
	 static Scanner sc = new Scanner(System.in);

	
	public static void main (String[] args) {
		
	    int N = Functions.getIntPos("Qual a quantidade de elementos: ");		
			
		int[]a=new int[N];
			int dim =leitura (a);
		System.out.println("Lista na ordem inversa:");
		imprimeInv(a);		
		
	}
	public static int[] Leitura(int[]a){
		for ( int i = 0 ; i<a.length ; i++){
			System.out.print("introduza um valor");
			a[i]=sc.nextInt();
}

	}
 public static void imprimeInv (int a[]) {
   for (int i=a.length-1; i>=0;i--){
   System.out.println(a[i]);

}

}



}
