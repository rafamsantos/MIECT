package Aula5.ex1;
import java.util.*;

public class Date {
    private int year;
    private int month;
    private int day;
    static Scanner x = new Scanner(System.in);

    public Date(int year , int month ,int day){
        this.year =year;
        this.month = month;
        this.day =day;

    }
    public int getYear(){return this.year;}
    public int getMonth(){return this.month;}
    public int getDay(){return this.day;}
    public void setYear(int year){ this.year = year;}
    public void setMonth(int month){ this.month = month;}
    public void setDay(int day){ this.day = day;}


    public boolean validMonth(int month){
        if(month > 12 || month < 0){
            return false;
        }
        return true;
    }
    public int monthDays(int month , int year){
        int days = 0;
        if(leapYear(year) == true && month == 2){
            days = 29;
        }else if(leapYear(year) == false && month == 2){
            days = 28;
        }else if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
            days =31 ;
        }else days = 30;
        return days;
    }
    public boolean leapYear(int year){
        if(year%4 == 0 ) {
            if(year%100 == 0) {
                if(year%400 == 0){
                    return true;
                }else return false;
            }else return true;
        }
        return false;
    }
    public boolean valid(int day , int month , int year){
        if(year >= 0 && validMonth(month)== true && day>0 && day <= monthDays(month, year)){
            return true;
        }
        return false;
    }
    @Override
    public String toString(){
        return getYear() + " / "+getMonth()+ " / "+ getDay();
    }

    @Override
    public boolean equals(Object obj){
        if(this == obj){
            return true;
        }
        if( obj == null){
            return false;
        }
        if(getClass() != obj.getClass()){
            return false;
        }
        Date other = (Date)obj;
        if(year != other.year){
            return false;
        }
        if(month != other.month){
            return false;
        }
        if(day != other.day){
            return false;
        }
        return true;
    }
    
}
