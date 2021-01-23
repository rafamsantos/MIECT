

public class TStack {
	int Stack[]= new int[5];
	int top = 0;

	public void push(int data){
		Stack[top] = data;
		top++;
	}
	
	public void show(){
		for(int i = 0; i< Stack.length ; i++){
			System.out.print(Stack[i] + " "); 
		}
		System.out.println();
	}
	
	public int pop(){
		int data = Stack[top];
		top--;
		Stack[top] = 0;
		
		return data;
		
	}
	
	public int peek(){
		int data = Stack[top-1];
		return data;
		
			
	}
	
}

