


public class Stack {
	int stack[]= new int[5];
	int top = 0;
	
	public void push(int data){
		if(top == 5){
			System.out.println("Stack is full");
		}
		
		
		stack[top] = data;
		top++;
	}
	
	public void show(){
		for(int i = 0; i< stack.length ; i++ ){
			System.out.print(stack[i] +" ");
		}
	}
		
	public int pop(){
		int data;
		
		if(isEmpty()){
			System.out.println("Stack is empty");
		}
				
		top--;
		data = stack[top];
		stack[top] = 0;
		return data;
	}
	
	public int peek(){
		int data;
		data = stack[top-1];
		return data;
	}
			
	public int size(){
		return top;
	}
	
	public boolean isEmpty(){
		if(top > 0){
			return false;
		}
		else return true;
	}
	
}
