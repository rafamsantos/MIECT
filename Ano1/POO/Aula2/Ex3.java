package Aula2;

import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Quantidade de agua (em kg) : ");
        double M = sc.nextDouble();

        System.out.println("Temperatura inicial (em Celcius) : ");
        double ti = sc.nextDouble();
    
        System.out.println("Temperatura final (em Celcius) : ");
        double tf = sc.nextDouble();

        double Q = M*(tf-ti)*4184;

        System.out.println("Energia necessária para aquecer a água : "+ Q);
        sc.close();

    }
}
