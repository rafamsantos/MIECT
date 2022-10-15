package Aula3;
import java.util.*;

public class ex6 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        int dias=0;
        System.out.println("Introduza o ano : ");
        int ano = sc.nextInt();
        System.out.println("Introduza o mes(1-12) : ");
        int mes = sc.nextInt();

        if(mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12){
            dias = 31;
        }else if(mes == 4 || mes == 6 || mes == 9 || mes == 11 ){
            dias = 31;
        }else if(mes == 2 && bissexto(ano)==true){
            dias = 29;
        }else if(mes == 2 && bissexto(ano)==false){
            dias = 28;
        }
        System.out.println("O mês do ano introduzido tem " + dias + " dias.");
        sc.close();
    }
    public static boolean bissexto(int ano) {
        return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
    }
}
