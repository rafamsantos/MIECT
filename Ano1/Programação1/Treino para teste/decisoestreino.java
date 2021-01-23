import java.util.Scanner;


public class decisoestreino {
	
	public static void main (String[] args) {
	
	Scanner kb = new Scanner (System.in);
		double a,b,c;
		
		
		System.out.println("Vamos calcular as raízes de uma equação de 2º grau");
		
		System.out.println("Introduza o valor de a: ");
			a=kb.nextDouble();
		System.out.println("Introduza o valor de b: ");
			b=kb.nextDouble();
		System.out.println("Introduza o valor de c: ");
			c=kb.nextDouble();
		
		
	double x;
	double y;	
	    x= (-b+Math.sqrt((b*b-4*a*c)))/(2*a);
		y= (-b-Math.sqrt((b*b-4*a*c)))/(2*a);
	
	if((b*b-4*a*c)>=0){		
		System.out.print("As raízes da equação de 2º grau são: "+ x +" e "+ y);
		}
	else{ 
		System.out.print("Não tem solução");
		
		}
	}
}
