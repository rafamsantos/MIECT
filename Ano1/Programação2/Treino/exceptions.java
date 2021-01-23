import java.util.Scanner;

public class exceptions {
	
	public static void main (String[] args) {
		try{
			int a[] = new int [5];
			a[4]=8;
			int j=0;
			int i = 7;
			int k =i/j;
			System.out.println("the output is "+k);
			
			
		}catch(ArithmeticException e ){
			System.out.println("ERROR : CANNOT DIVIDE BY  0");	

		}
		catch(ArrayIndexOutOfBoundsException e){
			System.out.println("ERROR : Fora dos limites do array");
		}
		catch(Exception e){
				System.out.println("Something went wrong ...");
		}
		finally{
			System.out.println("bye");
		}
	}
}

