
public class TreinoRecursividade {
	
	public static void main (String[] args) {
		int fatorialNR = fatorialNaoRecursivo(5);
		System.out.println(fatorialNR);
		int fatorialR  = fatorial(5);
		System.out.println(fatorialR);
	}
public static int fatorialNaoRecursivo(int num){
	if(num==0){
		return 1;
		}
	int total = 1;
	for (int i = num ; i>1 ; i--){
		total *= i;
		}
	return total;
	}
	// fatorial(5)= 5*fatorial(4)
	// fatorial(4)= 4*fatorial(3)
public static int fatorial(int num){
		if (num==0){
			return 1;
		}
		return num*fatorial(num-1);
		}

}

