import static java.lang.System.*;

public class PrintArgs {

  public static void main(String[] args) {
	System.out.println("String revertida : "+ reverseString(args[0]));
  }
  public static String reverseString(String args){
	String reverse = new String();
	assert args.length() > 0;
	if(args.length() == 1) return args;
	if(args.length() > 1){
		reverse = reverseString(args.substring(1))+ args.charAt(0);
	}
	return reverse;
  }
}

 
