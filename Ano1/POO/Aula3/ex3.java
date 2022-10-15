package Aula3;
import java.util.*;

public class ex3 {
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);
        System.out.println("Introduza um nº inteiro positivo : ");
        int x = sc.nextInt();
        int count = 0;
        
        if(x<0){
            System.out.println("Valor incorreto ! Tem de ser positivo");
            System.exit(0);
        }
        for(int i = 2 ; i < x ; i++){
            if(x%i == 0){
                count++;
                break;
            }
        }
        if(count==0){
            System.out.println("\nÉ nº primo.");
        }else{
            System.out.println("\nNão é nº primo.");
        }
        sc.close();
    }
        
}
