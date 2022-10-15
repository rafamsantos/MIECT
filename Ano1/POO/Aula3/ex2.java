package Aula3;
import java.util.*;


public class ex2 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduza um valor: ");
        int x = sc.nextInt();

        for(int i = x ; i > 0 ; i--){
            System.out.println(i);
        }

        sc.close();
    }
    
}
