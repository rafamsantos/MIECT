import java.util.Scanner;


public class f2e25{
	
	public static void main (String[] args) {
	Scanner kb = new Scanner(System.in);
	
	
    System.out.print("Introduza x1: ");
    int x1=kb.nextInt();
     	
    System.out.print("Introduza y1: ");
    int y1=kb.nextInt();
		
	System.out.print("Introduza x2: ");
	int x2=kb.nextInt();
	 
    System.out.print("Introduza y2: ");
    int y2=kb.nextInt();

    System.out.print("Introduza x3: ");
    int x3=kb.nextInt();

    System.out.print("Introduza y3: ");
    int y3=kb.nextInt();

    System.out.print("Introduza x4: ");
    int x4=kb.nextInt();

    System.out.print("Introduza y4: ");
    int y4=kb.nextInt();
    
    
    double f=Math.sqrt(Math.pow((x2-x1),2)+Math.pow((y2-y1),2));
    double g=Math.sqrt(Math.pow((x3-x2),2)+Math.pow((y3-y2),2));
    double h=Math.sqrt(Math.pow((x4-x3),2)+Math.pow((y4-y3),2));
    double j=Math.sqrt(Math.pow((x4-x1),2)+Math.pow((y4-y1),2));


if(f==g & g==h & h==j & j==f)
{
	System.out.print("A figura é um quadrado");
}
else 
{
	System.out.print("A figura não é um quadrado");
}


		
		
	}
}

