import java.util.Scanner;


public class f3e32 {
	
	public static void main (String[] args) {
    
    Scanner kb = new Scanner(System.in);
	
	int y; //definir o valor inteiro que será o correspondente à tabuada;
    int n,N=-1;
	while(N<=0 || N>=100)
	{
	    System.out.print("Digite o valor da tabuada:");
	    N=kb.nextInt();
		if(N<=0 || N>=100)
			System.out.print("ERRO!!");
	}
		System.out.println("---------------");
		System.out.printf("|Tabuada dos %2d |\n",N);
		System.out.println("---------------");
		
    for(n=1;n<=10;n++){
	     System.out.printf("| %2d x %2d | %3d   |\n",N,n,N*n);
		}
	     System.out.println("---------------");
			
					
			}
}

