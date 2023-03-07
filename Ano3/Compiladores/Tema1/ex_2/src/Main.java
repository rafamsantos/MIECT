import java.util.*;
import java.util.Scanner;

import static java.lang.Double.parseDouble;

public class Main {
    public static void main(String[] args) {
        String op1, op2, ope="n", operator;
        double res = 0;
        String fop1 = "", fop2="";
        double df1, df2;
        String[] parts1 ;
        String[] parts2 ;
        HashMap<String, Double> operands = new HashMap<>();


        Scanner sc = new Scanner(System.in);
        System.out.println("Calculator Start");
        while(ope != "y"){
            op1 = sc.nextLine();
            parts1 = op1.split(" ");
            System.out.println(parts1);
            if (isNumeric(parts1[0]) && parts1.length == 1) { // verifica se a string é numérica
                fop1 = op1; // convert String to Double
                ope = "y";
            } else if (!isNumeric(parts1[0]) && parts1[1].equals("=") && parts1.length == 3) { // não é nº então vai atribuir valor a string/carater
                operands.put(parts1[0], parseDouble(parts1[2]));
                fop1 = parts1[0];
                System.out.println("operator y/n?");
                ope = sc.nextLine();
            }

        }
        System.out.println("Operator: ");
        operator = sc.nextLine();

        op2 = sc.nextLine();
        parts2 = op2.split(" ");
        if (isNumeric(parts2[0]) && parts2.length == 1) { // verifica se a string é numérica
            fop2 = op2;
        } else if (!isNumeric(parts2[0]) && parts2[1] == "=" && parts2.length == 3) { // não é nº então vai atribuir valor a string/carater
            operands.put(parts2[0], parseDouble(parts2[2]));
            fop2 = parts2[0];
        }
        if(isNumeric(fop1)){
            df1 = parseDouble(fop1);
        }else{
            // get number from hashmap
            df1 = operands.get(fop1);
        }
        if(isNumeric(fop1)){
            df2 = parseDouble(fop2);
        }else{
            // get number from hashmap
            df2 = operands.get(fop2);
        }
        switch (operator) {
            case "*" -> res = df1 * df2;
            case "/" -> res = df1 / df2;
            case "+" -> res = df1 + df2;
            case "-" -> res = df1 - df2;
            default -> System.out.println("Invalid operator");
        }
        System.out.println("Result is : "+res);

    }
    public static boolean isNumeric(String str) {
        return str.matches("-?\\d+(\\.\\d+)?");  //match a number with optional '-' and decimal.
    }
}