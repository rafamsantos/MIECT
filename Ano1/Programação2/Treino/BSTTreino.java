import java.util.Scanner;

public class BSTTreino {
	
	Node root;
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		BSTTreino tree = new BSTTreino();
		tree.addNode(50,"boss");
		tree.addNode(25,"vice Pres");
		tree.addNode(15,"office manager");
		tree.addNode(30,"secretary");
		tree.addNode(75,"sales manager");
		tree.addNode(85,"salesman 1");
		
		tree.inOrderTraverseTree(tree.root);
		System.out.println();
		tree.preOrderTraverseTree(tree.root);
		System.out.println();
		tree.postOrderTraverseTree(tree.root);
		System.out.println();
		System.out.println("Search key to get a job : ");
		int k = sc.nextInt();
		System.out.println("The key belongs to " + tree.findNode(k));
		
	}
	
	public void addNode(int key , String name){
		Node newNode = new Node(key,name);
		
		if(root == null){
			root = newNode;
		}
		else{
			Node focusNode = root;
			Node parent;
			while(true){
				parent = focusNode;
				if(key<focusNode.key){
					focusNode = focusNode.leftChild;
					if(focusNode == null){
						parent.leftChild = newNode;
						return ;
					}
				}else{
					focusNode =focusNode.rightChild;
					
					if(focusNode == null){
						parent.rightChild = newNode;
						return;
						
					}
					
				}
				
			}
		}
	
	}
	public void inOrderTraverseTree(Node focusNode){
		if(focusNode != null){
			inOrderTraverseTree(focusNode.leftChild);
			System.out.println(focusNode);
			inOrderTraverseTree(focusNode.rightChild);
		}
		
	}
	public void preOrderTraverseTree(Node focusNode){
		if(focusNode != null){
			System.out.println(focusNode);
			preOrderTraverseTree(focusNode.leftChild);
			preOrderTraverseTree(focusNode.rightChild);
		}
			
	}
	public void postOrderTraverseTree(Node focusNode){
		if(focusNode != null){
			preOrderTraverseTree(focusNode.leftChild);
			preOrderTraverseTree(focusNode.rightChild);
			System.out.println(focusNode);
		}
			
	}
	public Node findNode(int key){
		Node focusNode = root;
		while(focusNode.key != key){
			if(key < focusNode.key){
				focusNode = focusNode.leftChild;
			}
			else{
				focusNode = focusNode.rightChild;
			}
			
		if(focusNode == null){
			return null;
		}
		}
		return focusNode;
		
	}
}

class Node{
	int key;
	String name;
	
	Node leftChild;
	Node rightChild;
		
	public Node(int key , String name){
		this.key = key;
		this.name = name;
	}
	public String toString (){
	return name+" has a key "+key;	
	
	}
	
}
