import java.util.Scanner;


public class Ex1_19 {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Nome próprio : ");
		String np = sc.nextLine();
		System.out.print("Apelido : ");
		String ap = sc.nextLine();
		
		char nome = np.charAt(0);
		char apelido = ap.charAt(0);
		
		boolean maiuscula = false;
		
		
		if(np.isUpperCase() && apelido.isUpperCase()){
				maiuscula =  true;
		}
	
		
	}
}

