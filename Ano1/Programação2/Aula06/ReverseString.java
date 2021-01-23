import static java.lang.System.*;


public class ReverseString {
	
	public static void main (String[] args) {
		for(int i = 0; i< args.length; i++){
			System.out.println(Reverse(args[i]));
			}

	}

	public static String Reverse(String palavra) {
		
		if (palavra.length() == 1){
			return palavra;
		}
		else if(palavra.length() == 0){
			return palavra;
		}
		else{ 
			return Reverse(palavra.substring(1)) + palavra.charAt(0);
		}
	}
}

