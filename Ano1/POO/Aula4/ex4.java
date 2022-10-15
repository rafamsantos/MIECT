package Aula4;
import java.util.Scanner;

public class ex4 {
    static Scanner sc = new Scanner(System.in);
    static Scanner l = new Scanner(System.in);
    public static void main(String[] args) {
        
        String mes =getMes();   //mes string
        int ano =getAno();     // ano
        int diaSemana = getDiaSemana();   // dia da semana
        int diasMes = getDiasMes();    // quantos dias tem o mes
        printCalendar(mes, ano ,diaSemana , diasMes);
    }
    public static void printCalendar(String mes , int ano , int diaSemana , int diasMes){
        String header = "Mon Tu We Th Fr Sa Su";
        System.out.println("       "+mes + " "+ ano);
        System.out.print(header);
        int dia = 1;
        for(int i =1 ; i <= diaSemana + diasMes-1 ; i++){ // i é a posição no calendario // dia -> dia que estamos a imprimir
            if(i%7 == 1){
                System.out.println(); // fim de cada semana
            }
            if(i<diaSemana){
                System.out.print("   "); // ocupa espaços dos dias nao ocupados por nºs
            }else{
                if( dia/10 == 0){
                    System.out.print("  "+ dia);
                }else{
                    System.out.print(" "+ dia);
                }
                dia++;
            }
        }
    }
    public static String getMes(){
        System.out.println("Mês : ");
        return l.nextLine();
    }
    public static int getAno(){
        System.out.println("Ano: ");
        return sc.nextInt();
    }
    public static int getDiaSemana(){
        System.out.println("Dia da semanas (1 = Segunda, 2 = Terça, 3 = Quarta, 4 = Quinta, 5 = Sexta, 6 = Sábado, 7 = Domingo) : ");
        return sc.nextInt();
    }
    public static int getDiasMes(){
        System.out.println("Nºde dias do Mês : ");
        return sc.nextInt();
    }

}


