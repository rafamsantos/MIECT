package Aula10.Ex3;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ex3 {
    public static void main(String[] args) {
        
        Map<Character, ArrayList<Integer>> letters = new HashMap<Character, ArrayList<Integer>>();
        String s = "Hello World";

        for(int i =0; i< s.length() ; i++){ // escolhe letra
            letters.put(s.charAt(i) , new ArrayList<Integer>());
            for(int j = 0; j <s.length(); j++){  // compara letra anterior com todas as letras restantes da string
                if(s.charAt(j)== s.charAt(i)){  // se houver repetição
                    letters.get(s.charAt(i)).add(j);// guarda a posição no Arraylist associado à key da letra
                }
            }
        }
        System.out.println(letters);

        
    }
    
}
