package Aula2;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Introduza um valor em Célsius : ");
        double c = sc.nextDouble();
        double aux = 1.8*c;
        double f = aux + 32;
        System.out.printf("\nValor em Farhenheit : %f" , f);

        sc.close();

        
    }
    
}
