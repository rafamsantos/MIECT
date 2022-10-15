package Aula5.ex1;
import java.util.*;
public class ex1 {
    static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        int year = 0;
        int month = 0;
        int day = 0;
        int op;
        Date d=new Date(year , month , day);;
        
        do{
            System.out.println("Date operations:");
            System.out.println("1 -create new date");
            System.out.println("2 -show current date");
            System.out.println("3 -increment date");
            System.out.println("4 -decrement date");
            System.out.println("0 -exit");
            System.out.print(" -> ");
            op = sc.nextInt();
            switch(op){
                case 1 :createDate(d);
                    break;
                case 2: showDate(d);
                    break;
                case 3: incDate(d);
                    break;
                case 4: decDate(d);;
                    break;
                case 0 : System.out.println("Fim do programa.");
                    break;
                }
        }while(op != 0);
    }
    public static void createDate(Date d){
        System.out.println("year : ");
        int year = sc.nextInt();
        d.setYear(year);
        System.out.println("Month : ");
        int month = sc.nextInt();
        d.setMonth(month);
        System.out.println("Day: ");
        int day = sc.nextInt();
        d.setDay(day);
        
        if(d.valid(day, month, year) == false){
            System.out.println("Data inválida.");
            System.out.println("");
        }
    }
    public static void showDate(Date d){
        System.out.println("("+ d.getYear() + "-" + d.getMonth() + "-" + d.getDay()+ ")");

    }
    public static void incDate(Date d){
        if( d.getDay() > 0 && d.getDay() < d.monthDays(d.getMonth(), d.getYear())){   // dia a meio do mês
            d.setDay(d.getDay()+1); // dia++
        }
        else if(d.getDay() == d.monthDays(d.getMonth(), d.getYear()) && d.getMonth() != 12){  // ultimo dia de um mes que nao seja Dezembro
            d.setDay(1);//day = 1;
            d.setMonth(d.getMonth()+1);//month+=1;
        }
        else if(d.getDay() == d.monthDays(d.getMonth(), d.getYear()) && d.getMonth() == 12){
            d.setDay(1);//day = 1;
            d.setMonth(1);//month =1;
            d.setYear(d.getYear()+1);//year+=1;
        }
    }
    public static void decDate(Date d){
        if( d.getDay() > 1 && d.getDay() < d.monthDays(d.getMonth(), d.getYear())){   // dia a meio do mês
            d.setDay(d.getDay()-1);//day -=1;
        }
        else if(d.getDay() == 1 && d.getMonth() != 1){  // ultimo dia de um mes que nao seja Dezembro
            d.setMonth(d.getMonth()-1);//month-=1;
            d.setDay(d.monthDays(d.getMonth(), d.getYear()));//day = monthDays(month, year);
        }
        else if(d.getDay() == 1 && d.getMonth() == 1){
            d.setMonth(12);//month = 12;
            d.setDay(d.monthDays(d.getMonth(), d.getYear()));//day = monthDays(month, year);
            d.setYear(d.getYear()-1);// year-=1;
        }
    }
    
}
