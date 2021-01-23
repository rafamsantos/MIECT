import static java.lang.System.*;

public class Factors {

  public static void main(String[] args) {
    assert args.length > 0;
    
    for(int i = 0; i < args.length; i++)
      System.out.println(args[i]+" = "+factors(Integer.parseInt(args[i])));
  }
  public static String factors(int n){
	  assert n >= 0;
	for(int i=2;i<=n/2; i++){
		if(n%i==0){
			return String.valueOf(i)+"*"+factors(n/i);
			}
		}
		return String.valueOf(n);
	
	}
}

