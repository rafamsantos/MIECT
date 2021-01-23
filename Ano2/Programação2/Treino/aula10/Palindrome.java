package p2utilS;
import java.util.Scanner;
import java.lang.System.*;
import p2utils.*;
import java.util.Stack;

public class Palindrome {
	
	public static void main (String[] args) {
		Stack<Character> Spal = new Stack<Character>();
		String pal = new String();
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Introduz uma string : ");
		pal = sc.nextLine();
		
		for(int i = 0 ; i < pal.length() ; i++){
			Spal.push(pal.charAt(i));
		}
		String reverse = "";
		
		while(!Spal.isEmpty()){
			reverse =reverse + Spal.pop();
		}
		if(reverse.equals(pal)){
			System.out.println("É um palindrome");
		}else{
			System.out.println("Nao é um palindrome");
		}
		
	}
}

