
import pt.ua.p2utils.*;

public class Dock {

  private final Stack<Container> containerStack;
  private final Queue<Container> accessExtension;
  private final int maxStack; // maximum number of containers in a stack

  public Dock(int maxStack) {
    accessExtension = new Queue<>();
    containerStack = new Stack<>();
    this.maxStack = maxStack; // controla-se o size fora da pilha
  }

  public boolean stackEmpty() {
    return containerStack.isEmpty();
  }

  public boolean stackFull() {
    return containerStack.size()==maxStack;
  }

  public boolean accessExtensionEmpty() {
    return accessExtension.isEmpty();
  }

  public int count() {
    return containerStack.size()+accessExtension.size();
  }

  public String toString() {
    return "In stack:" + containerStack.toString() + 
      " / In access: " + accessExtension.toString();
  }

  // a new container arrives and must be added to the queue
  public void enterContainer(Container c) {
    //...
    accessExtension.in(c);

  }

  // top container in stack is removed (it will be shipped)
  public Container shipContainer() {
    //...
    Container c = containerStack.top();
    containerStack.pop();
    return c;

  }

  // Moves containers from the accessExtension to the dock stack
  public void moveFromAccessToStack() {
    //...
    while ( containerStack.size()<maxStack && 
        !accessExtension.isEmpty()) {
      containerStack.push(accessExtension.peek());
      accessExtension.out();
    }

  }

  // pick the first container from the queue
  // and insert it in the stack in such way the stack
  // is sorted by distance to destination
  // (largest distance at the top)
  public void insertFirstInStack() {
    assert !stackFull() && !accessExtensionEmpty();
    //...
    Container c = accessExtension.peek();
    accessExtension.out();
    Stack<Container> tmp = new Stack<>();
    while ( !containerStack.isEmpty() && 
        containerStack.top().distance>c.distance) {
      tmp.push(containerStack.top());
      containerStack.pop();
    }
    containerStack.push(c);
    while (!tmp.isEmpty()) {
      containerStack.push(tmp.top());
      tmp.pop();
    }

  }
}

