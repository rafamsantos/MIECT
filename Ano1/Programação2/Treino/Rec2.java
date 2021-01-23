
public class Rec2 {
	
	public static void main (String[] args) {
		int[]a ={1, 4, 45, 6, -50, 10, 2}; 
		findMin(a,a.length);
		System.out.println("o elemento minimo é : "+ findMin(a,a.length));
	}
	public static int findMin(int[]a, int n){
		if(n == 1){
			return n;
		}
		return Math.min(a[n-1], findMin(a,n-1));
	}
}

