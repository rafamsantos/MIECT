import java.util.Scanner;


public class decisoestreino2 {
	
	public static void main (String[] args) {
		Scanner sc =new Scanner(System.in);
		int a;
		int b;
		
		System.out.println("Introduza um nº: ");
			a=sc.nextInt();
		System.out.println("Introduza um segundo valor: ");
			b=sc.nextInt();
			
			if (a>b){
				System.out.println("O maior valor é "+a);
			}
			else if (b>a) {
				System.out.println("O maior valor é "+b);
			}
			else {
				System.out.println("Os números são iguais ");
			}
				
			 
}

}
