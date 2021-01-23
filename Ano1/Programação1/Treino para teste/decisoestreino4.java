import java.util.Scanner;

public class decisoestreino6 {
	
	public static void main (String[] args) {
		Scanner kb= new Scanner (System.in);
		int a;
		int b;
		int c;
		
		System.out.print("Introduza um nº: ");
			a=kb.nextInt();
		
		System.out.print("Introduza um segundo nº: ");
			b=kb.nextInt();
			
		System.out.print("Introduza um terceiro nº: ");
			c=kb.nextInt();
			
		if(a>b && b>c){
			System.out.print(c+"<"+b+"<"+a);
		}
		else if(a>b && c>b){
				System.out.print(b+"<"+c+"<"+a);
			}
		
		else if(b>a && a>c){
			System.out.print (c+"<"+a+"<"+b);
		}
		else if(b>a && c>a){
			System.out.print (a+"<"+c+"<"+b);
		}
		else if(c>a && a>b){
			System.out.print(b+"<"+a+"<"+c);
		}
		else if(c>a && b>a){
			System.out.print(a+"<"+b+"<"+c);
		}
	
		
	}
}

