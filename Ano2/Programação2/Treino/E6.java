
public class E6 {
	
	public static void main (String[] args) {
		countPairs(args[0],0);
		System.out.println(args[0]+" contains " + countPairs(args[0],0) + " of consecutive equal characters");
	}
	public static int countPairs(String str,int i ){
		if(i >= str.length()-1) return 0;		
		if(str.length() == 1) return 0;
		if(str.charAt(i)==str.charAt(i+1)){
			return 1 + countPairs(str,i+1); 
		}
		return countPairs(str,i+1); 
		
	}
}

