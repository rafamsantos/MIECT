package Aula2;
import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Montante investido : ");
        double mi = sc.nextDouble();

        System.out.println("Taxa de juro mensal(%): ");
        double jm = sc.nextDouble();

        double j = (mi*jm*3)/100;     // 3 -> nº de meses
        double total = mi +j;

        System.out.println("Valor total ao fim de 3 meses : "+ total);
        sc.close();

    }
}
