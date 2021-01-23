import java.util.Queue;
import java.util.LinkedList;
import java.io.*;

public class queueTreino {
	
	public static void main (String[] args) {

		Queue<String> bbqLine = new LinkedList<String>();
		bbqLine.add("Jackson");
		bbqLine.add("Tyreek");
		bbqLine.add("Susan");
		
		System.out.println(bbqLine.peek());
		
		
		System.out.println(bbqLine);
		System.out.println(bbqLine.isEmpty());


	}
}

