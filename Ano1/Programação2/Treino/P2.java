
public class P2 {
	
	public static void main (String[] args) {
		assert args.length > 0;
		String s = args[0];
		invertDigits(s);
	}
	public static String invertDigits(String s){
		int a = Integer.parseInt(s);
        if(Character.isDigit(a)){
            System.out.println(a);
        }
        return null;
		
	}
}

