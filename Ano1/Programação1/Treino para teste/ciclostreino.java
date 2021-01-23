import java.util.Scanner;

public class ciclostreino {
	
	public static void main (String[] args) {
		Scanner kb = new Scanner(System.in);
		int n;
		
		System.out.print("Tabuada do : ");
			n=kb.nextInt();
		
		for (int a=1;a<=10;a++){
			System.out.println(n+"x"+a+"="+n*a);
		}
	}
}

