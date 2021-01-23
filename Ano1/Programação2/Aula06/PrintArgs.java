import static java.lang.System.*;

public class PrintArgs {

  public static void main(String[] args) {
   printArray(args, args.length);
    
    }

  /** Imprime as N primeiras strings do array, uma por linha. */
  public static void printArray(String[] array, int N) {
	if(N != 0){
		//System.out.println(array[N-1]); // imprime por ordem inversa
		printArray(array,N-1);
		System.out.println(array[N-1]);  // imprime por ordem normal
		} 
	
	
	}

}

