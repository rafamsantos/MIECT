import java.util.Scanner;


public class Ex1_18 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		String c ,s;
		
		System.out.println("Introduza uma frase : ");
		c = sc.nextLine();
		
		for(int i = 0 ; i < c.length() ; i++){
			
			if(charAt(i).isLowerCase()){
				char ch = c.charAt(i);
				String s = ch.toUpperCase(i);
				}
		}

		
		
	}
}

