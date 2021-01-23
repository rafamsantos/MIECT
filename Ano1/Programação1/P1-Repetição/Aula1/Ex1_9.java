import java.util.Scanner;

public class Ex1_9 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Comprimento : ");
		int c = sc.nextInt();
		System.out.print("Largura ");
		int l = sc.nextInt();
		
		int area = c*l;
		int perimetro = 2*c + 2*l;
		
		System.out.println("Área : " + area );
		System.out.println("Perímetro : " + perimetro );
	}
}

