import java.util.Scanner;
import java.io.*;

public class treinofuncoes{
	
	static Scanner sc= new Scanner(System.in);  
	
	public static void main (String[] args) {
		leitura();
		tabuada();
}
	
	public static void leitura(){
	System.out.println("Vamos calcular a tabuada de um valor à escolha");
		
	}
	public static void tabuada(){
		
	   System.out.print("Valor da tabuada a calcular :\n");
	   int n =sc.nextInt();
	   System.out.println("-----------------");
	   System.out.printf("Tabuada dos %2d :\n ",n);
	   System.out.println("-----------------");
	   System.out.printf(" %2d X 1 = %2d\n ",n,n*1);
	   System.out.printf("%2d X 2 = %2d\n ",n,n*2);
	   System.out.printf("%2d X 3 = %2d\n ",n,n*3);
	   System.out.printf("%2d X 4 = %2d\n ",n,n*4);
	   System.out.printf("%2d X 5 = %2d\n ",n,n*5);
	   System.out.printf("%2d X 6 = %2d\n ",n,n*6);
	   System.out.printf("%2d X 7 = %2d\n ",n,n*7);
	   System.out.printf("%2d X 8 = %2d\n ",n,n*8);
	   System.out.printf("%2d X 9 = %2d\n ",n,n*9);
	   System.out.printf("%2d X 10 = %2d\n ",n,n*10);

	}
	
}

