import static java.lang.System.*;

public class P2
{
  public static void main(String[] args)
  {
	  String f = args[0];
	  String reversed = invertDigits(f,0);
	  System.out.println("String revertida : "+ reversed);
	  
  }
  public static String invertDigits(String toInvert,int index){
	int len = toInvert.length();
		if(index == len - 1) { return Character.toString(toInvert.charAt(index)); }
		
		if (!Character.isDigit(toInvert.charAt(index))) { 
			return toInvert.charAt(index) + invertDigits(toInvert, index+1);
		}
		// if only digits, and next char is also a digit
		if (index != (len - 1) && Character.isDigit(toInvert.charAt(index+1))) { 
			return invertDigits(toInvert, index+1) + toInvert.charAt(index);
		}
		// only digits, but next char is not a digit
		return Character.toString(toInvert.charAt(index));
  }

}

