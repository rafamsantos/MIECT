package p2utils;
import java.io.*;
import java.util.Stack;
import java.util.Scanner;


public class Palindrome {
	
	public static void main (String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter any string : ");
		String s = sc.nextLine();
		Stack stack = new Stack();
		
		for(int i = 0; i < s.length() ; i++){
			stack.push(s.charAt(i));	
		}
		String reverseString = "";
		
		while(!stack.isEmpty()){
			reverseString = reverseString + stack.pop();
		}
		if(s.equals(reverseString)){
			System.out.println("The string is a palindrome.");
		}
		else{
			System.out.println("The string is not a palindrome.");
		}
		
	}
}

