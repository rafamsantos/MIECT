import java.util.Scanner;

public class f6e62 {
	
	static Scanner sc = new Scanner (System.in);
	
	public static void main (String[] args) {
	
	int a[] = new int[100]; // declaração e inicialização do array	
	
	//leitura dos valores para o array
	int dim = leitura(a); // a-in/out;dim - nº de elementos lidos
	//procura de número 
	System.out.print("Qual o número a procurar: ");
	int num = sc.nextInt();
	System.out.println("O número "+num+" aparece "+count(num,a,dim)+" vezes ");
	 	
	}
	
	   public static int leitura (int[]a) {

	int i=0 ,n;
	do{ 
		System.out.print("Introduza um valor: ");
		n = sc.nextInt(); 
		if (n>0){ //0 é ignorado 
			a[i]=n ;
			i++;
		}
	} while (i<a.length && n>=0);
	return i;
	
	a[i] =sc.nextInt();
}
	
	   
	   public static void imprimeInv (int a[]) {
    for (int i=a.length-1; i>=0;i--){
    System.out.println(a[i]);
}
}   
	  

}
