import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        double op1, op2;
        String ope;
        Scanner sc = new Scanner(System.in);
        System.out.println("First operand: ");
        op1 = sc.nextDouble();
        System.out.println("Operator: ");
        sc.nextLine();
        ope = sc.nextLine();
        System.out.println("Second operand: ");
        op2 = sc.nextDouble();

        double c = Calculator(op1,ope,op2);
        System.out.println("The result is : "+c);


    }
    public static double Calculator(double op1,String ope,double op2){
        double res=0;

        switch (ope) {
            case "*" -> res = op1 * op2;
            case "/" -> res = op1 / op2;
            case "+" -> res = op1 + op2;
            case "-" -> res = op1 - op2;
            default -> System.out.println("invalid operator");
        }
        return res;
    }
}