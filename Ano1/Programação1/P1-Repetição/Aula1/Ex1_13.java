import java.util.Scanner;


public class Ex1_13 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		int x1,y1,x2,y2;
		double dist;
		
		System.out.println(" Distância entre duas localidades A(x1,y1) e B(x2,y2)");
		System.out.println(" Localidade A :   ");
		System.out.print(" Coordenada x1 : ");
		x1 = sc.nextInt();
		System.out.print(" Coordenada y1 : ");
		y1 = sc.nextInt();
		
		System.out.println(" Localidade B :   ");
		System.out.print(" Coordenada x2 : ");
		x2 = sc.nextInt();
		System.out.print(" Coordenada y2 : ");
		y2 = sc.nextInt();
		
		dist =Math.sqrt((x1-x2)^2 + (y1-y2)^2);
		System.out.println(" A distãncia entre as duas localidades é : " + dist);
		
	}
}

