import java.util.Scanner;



public class f1e114{
	
	public static void main (String[] args) {
		Scanner kb=new Scanner(System.in);
		double c=kb.nextDouble();
		System.out.print("Introduza o valor do cateto A :");
	    double  a = kb.nextDouble();
	    
	    System.out.print("Introduza o valor do cateto B :");
	    double b = kb.nextDouble();
	    
	    double h = Math.sqrt(Math.pow((a),2)+Math.pow((b),2));
	    c=Math.acos(a/c)*180/Math.PI;
	    
	    
	    System.out.printf(" o valor da hipotenusa =%6.2f\n ",h);
	    

	    
	}
}

