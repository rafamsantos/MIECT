package Aula4;
import java.util.*;


public class ex1 {
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);

        System.out.println("Frase : ");
        String str = sc.nextLine();
        String strf = str.toLowerCase();        // frase convertida para minusculas
        System.out.println("Frase introduzida : "+ str);
        System.out.println("Frase convertida para minusculas : "+ strf);
        String fThree =str.substring(0,3);      // first three char
        
        String lChar = str.substring(str.length()-1);   // last character
        

        System.out.println("Último Caracter : "+ lChar);
        System.out.println("3 primeiros caracteres : "+ fThree);
        sc.close();
        
    }
    
}
