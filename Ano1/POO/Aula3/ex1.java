package Aula3;
import java.util.*;

public class ex1 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        double np;
        double nt;
    
        System.out.println("Nota da componente prática : ");
        np = sc.nextDouble();

        System.out.println("Nota da componente teórica : ");
        nt = sc.nextDouble();

        if( np <=0 || np >=20){
            System.out.println("\nValores incorretos") ;        // verificação dos valores introduzidos
            System.exit(0);
        } 
        if( nt<0 || nt >=20){
            System.out.println("\nValores incorretos");         // verificação dos valores introduzidos
            System.exit(0);     
        } 
        double nf = 0.6*np+0.4*nt;

        if(np<7 || nt <7){
            System.out.printf("\nNota final : %d" , 66);
        }else if(np>7 && nt>7 && nf < 9.5){
            System.out.printf("\nNota final: %.1f" , nf);  
        }else{
             System.out.printf("\nNota final: %.1f" , nf);
        }
        sc.close();

    }
    
}
