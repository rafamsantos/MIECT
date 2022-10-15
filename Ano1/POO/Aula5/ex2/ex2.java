package Aula5.ex2;
import java.util.*;

public class ex2 {
    static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        int op;
        do{
            System.out.println("Calendar operations : ");
            System.out.println("1 - create new Calendar.");
            System.out.println("2 - print calendar month.");
            System.out.println("3 - print calendar.");
            System.out.println("0 - exit.");
            op = sc.nextInt();

            switch(op){
                case 1 : createCalendar();
                    break;
                case 2 : printCalendarMonth();
                    break;
                case 3 : printCalendar();
                    break;
                case 0 : System.out.println("O programa vai terminar.");
                    break;
                default : System.out.println("Opção inválida.");
                    break;
            }
        }while(op != 0);
    }
    public static void createCalendar(){}
    public static void printCalendarMonth(){}
    public static void printCalendar(){}
}
