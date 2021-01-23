import java.util.Scanner;


public class outra_tentativa {
	static Scanner kb = new Scanner(System.in);
	
	public static void main (String[] args) {
	int N;
	System.out.print("Introduza a dimensão do array: ");
	N=kb.nextInt();
	
	int[]a=new int[N];
	int dim=leitura(a);
	System.out.print("Qual o número a procurar: ");
	int num = kb.nextInt();
	
	 System.out.println("O número "+num+" aparece "+count(num,a,dim)+" vezes ");
	
	int max = maximo(a);
	 System.out.printf("O número máximo é :%2d\n",max);
	 double media = media(a);
	 System.out.printf(" A média é : %3.3f\n",media); 
 }
	public static int leitura(int[]a){
	int i;
	for( i = 0; i<a.length; i++){ 
			System.out.print("Introduza um valor: ");
			a[i]=kb.nextInt();
		}
	return i;
	}
	public static int count(int num,int []a,int dim){
    int contador=0;
    for(int j=0; j<dim;j++){ 
		if(a[j]==num){
			contador++;
	}
}
	return contador;
	
	
  }
   public static  int maximo(int[]a){
	  int maximo=a[0];
	  for (int i = 0;i<a.length;i++){
		  if( a[i]>maximo){
			  a[i]=maximo;
		  }
	  }
		  return maximo;
}
	
    public static double media(int[]a) {
		int soma=0;
		double media;
			
		for (int i = 0 ; i < a.length ; i++){
			soma=soma + a[i];
		}
	 media= (double)soma/a.length;
		return media;
}
}



