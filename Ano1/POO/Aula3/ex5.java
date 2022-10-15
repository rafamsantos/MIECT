package Aula3;
import java.util.*;

public class ex5 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Montante investido : ");
        int mi = sc.nextInt();
        if(mi%1000!=0 || mi<0){
            System.out.println("Condições não realizadas");
            System.exit(0);
        }
        
        System.out.println("Taxa de juro mensal : ");
        int tjm = sc.nextInt();
        if(tjm<0 || tjm >5){
            System.out.println("Condições não realizadas");
            System.exit(0);
        }

        for(int i =1 ; i < 13 ; i++){
            double j = (mi*tjm*i)/100;     // 3 -> nº de meses
            double total = mi +j;
            System.out.println("Mês "+i+" : " + total);
        }
        sc.close();
    }
    
}
