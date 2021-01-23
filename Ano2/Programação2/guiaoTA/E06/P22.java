import static java.lang.System.*;


public class P22 {
	
	public static void main (String[] args) {
		int count= 0 ;
		countPairs(args, count);
		
	}
	public static int countPairs(String[] ar, int count){
		for(int i = 0 ; i< ar.length; i++ ){
			if( ar[i].length() < 2 ) return 0;
			if( ar[i].length() >= 2 ){
			
			for(int j = 0 ; j< ar[i].length() ; i++){	
				if(ar[i].charAt(j) == ar[i].charAt(j+1)){
					count++;
				}
			}
		}
	}
		return count;
   }
}

