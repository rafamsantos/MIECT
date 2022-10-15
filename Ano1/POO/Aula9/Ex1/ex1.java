package Aula9.Ex1;
import Aula6.*;
import Aula5.ex1.Date;

import java.util.Set;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.TreeSet;

public class ex1 {
    public static void main(String[] args) {
        
        ArrayList<Integer> c1= new ArrayList<>();
        for(int i= 10; i<= 100; i+=10) 
            c1.add(i);
        System.out.println("Size: "+ c1.size());
        for(int i= 0; i< c1.size(); i++) 
            System.out.println("Elemento: "+ c1.get(i));
        ArrayList<String> c2= new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio"); 
        c2.remove(0);
        System.out.println(c2);

        Set<Pessoa> c3 = new HashSet<>();
        Date d = new Date(2001, 7, 19);
        Pessoa p1 = new Pessoa("Rafael" , 12345 , d);
        Pessoa p2 = new Pessoa("Machado", 123456789, d);
        Pessoa p3 = new Pessoa("Santos");
        Pessoa p4 = new Pessoa("Rafael" , 12345 , d);
        c3.add(p1);
        c3.add(p2);
        c3.add(p3);
        c3.add(p4);        
        for(Pessoa p : c3){
            System.out.println(p);
        }

        Set<Date> c4 = new TreeSet<>();

        c4.add(new Date(2001, 7, 19));
        c4.add(new Date(2022, 5,25));
        c4.add(new Date(2022 , 5 , 25));
        c4.add(new Date(2013, 11, 30));
        c4.add(new Date(2013, 11, 30));        
    }
}
