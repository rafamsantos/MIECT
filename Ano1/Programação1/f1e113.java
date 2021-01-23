

import java.util.Scanner;

public class f1e113 {
	
	public static void main (String[] args) {

		Scanner kb=new Scanner(System.in);
		
		
		
		System.out.print ("introduza o valor da abcissa de A : ");
		double x1 = kb.nextDouble();
		
		System.out.print( "introduza o valor da ordenada de A : "); 
		double y1 = kb.nextDouble();
		
		System.out.print ("Introduza o valor da abcissa de B : ");
		double x2 = kb.nextDouble();
		
		System.out.print ("Introduza o valor da ordenada de B : ");
		double y2 =kb.nextDouble(); 
		
		
	   double dist= 100*Math.sqrt(Math.pow((x1-x2),2)+Math.pow((y1-y2),2));
	   
	   System.out.printf( "A distância entre as 2 localidades é de %6.1fkm/n",dist);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
}

