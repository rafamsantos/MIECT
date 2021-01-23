import static java.lang.System.*;


public class ReverseArgs {
	
	public static void main (String[] args) {
		printArray(args , args.length);
	}
	public static void printArray(String[] array, int N) {
		if(N != 0){
			System.out.println(array[N-1]); // imprime por ordem inversa
			printArray(array,N-1);}
	}
}

