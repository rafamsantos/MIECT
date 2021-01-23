
public class Rec {
	
	public static void main (String[] args) {
		int n = Integer.parseInt(args[0]);
		sum(n);
		System.out.println("A soma é "+sum(n));
	}
	
    public static int sum(int n){
		int res = 0;
		if(n <= 1){
		return n;
		}
		res = n + sum(n-1);
		return res;
    }
}

