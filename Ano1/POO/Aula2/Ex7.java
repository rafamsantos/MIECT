package Aula2;
import java.util.*;

public class Ex7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
		int x1,y1,x2,y2;
		double dist;
		
		System.out.println(" Ponto1 :   ");
		System.out.print(" Coordenada x1 : ");
		x1 = sc.nextInt();
		System.out.print(" Coordenada y1 : ");
		y1 = sc.nextInt();
		
		System.out.println(" Ponto2 :   ");
		System.out.print(" Coordenada x2 : ");
		x2 = sc.nextInt();
		System.out.print(" Coordenada y2 : ");
		y2 = sc.nextInt();
		 
		dist =Math.sqrt((x2-x1)^2 + (y2-y1)^2);
		System.out.println(" A distãncia entre as duas localidades é : " + dist);
		sc.close();	
        
    }
    
}
