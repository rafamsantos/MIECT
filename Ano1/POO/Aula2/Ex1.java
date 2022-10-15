package Aula2;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduza um valor em km : ");
        double km = sc.nextDouble();
        double miles = km/ 1.069;
        System.out.printf("Valor em milhas : %f", miles);
        sc.close();
    }
}
