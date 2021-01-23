

public class StackTreino {
	
	public static void main (String[] args) {
		TStack nums = new TStack();
		nums.push(15);
		nums.push(8);
		nums.push(10);
		System.out.println(nums.peek());
		
		nums.show();
		nums.pop();
		nums.show();
	}
}

