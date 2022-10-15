package Aula4;
import java.util.*;

public class ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Frase : ");
        String fr = sc.nextLine();
        System.out.println("Possui "+countDigits(fr) +" digitos.");
        System.out.println("Tem "+ countSpaces(fr)+" espaços.");
        onlyLowerCase(fr);
        System.out.println("Frase sem espaços extra : "+ oneSpace(fr));
        System.out.println("Palindromo ? "+ isPalindrome(fr));

        sc.close();
    }

    public static int countDigits(String s){
        int countN = 0;         // conta nº de digitos
        for(int i = 0; i < s.length() ; i++){
            char c = s.charAt(i);
            if(Character.isDigit(c)){
                countN++;
            }
        }
        return countN;
    }
    public static int countSpaces(String s){
        int countS = 0;
        char sp =' ';
        for(int i =0; i < s.length() ; i++){
            char c = s.charAt(i);
            if(c == sp){
                countS++;
            }
        }
        return countS;
    }
    public static void onlyLowerCase(String s){
        int countM = 0;
        for(int i = 0; i < s.length() ; i++){
            char c = s.charAt(i);
            if(Character.isUpperCase(c)){
                countM++;
            }
        }
        if(countM == 0){
            System.out.println("A frase só contém minúsculas");
        }else{
            System.out.println("A frase NÃO contém só minúsculas");
        }
    }

    public static String oneSpace(String s){
        return s.trim().replace(" +", " ");
    }
    public static boolean isPalindrome(String st){
        String s =st.toLowerCase();
        int i = 0 , j =s.length()-1;
        while(i < j){
            if(s.charAt(i) != s.charAt(j)){
                return false;
            }
            i++;
            j--;
        }
        return true;
    }

    
}
