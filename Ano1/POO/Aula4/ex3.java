package Aula4;
import java.util.*;

public class ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String acronimo = " ";

        System.out.println("Introduza uma frase : ");
        String frase = sc.nextLine();

        String [] arrOfStr =  frase.split(" ");
        for(int i =0; i < arrOfStr.length ; i++){
            String s = arrOfStr[i]; 
            if( s.length()<3){
                continue;
            }
            for(int j = 0; j < s.length() ; i++){
                char c = s.charAt(j);
                if(Character.isUpperCase(c)){
                    acronimo += c;
                }
            }
        }
        System.out.println("Acronimo: " +acronimo);
        sc.close();
    }
    
}
