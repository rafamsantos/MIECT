package Aula11.Ex1;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Map;

public class ex1 {
    public static void main(String[]args) throws FileNotFoundException {
        File f = new File("C:/Users/rafa_/Desktop/Universidade/2ºAno/2ºSemestre/POO/POO/src/Aula11/Ex1/ex1.txt");
    
        HashMap<String , Integer> pares = new HashMap<>();
        Scanner reader = new Scanner(f);
        while(reader.hasNextLine()){
            
            String[] words = reader.nextLine().split("[\\s@&.?$+-,]+");
            
            for(int k = 0; k < words.length ; k++){ // todas as palvras length < 3 ficam null
                if(words[k].length() < 3){
                    words[k] =null; 
                }
            }
            words = Arrays.stream(words).filter(s -> (s != null && s.length() > 0)).toArray(String[]::new);    // retira nulls
        
            
            for(int j = 0; j < words.length-1 ; j+=2){             
                    if(!pares.containsKey(words[j])){
                        HashMap<String , Integer> wordDict = new HashMap<String,Integer>();
                        pares.put(words[j], wordDict.put( words[j+1], 1));
                        System.out.println(pares.get(words[j]));

                    }else{
                        System.out.println(pares.get(words[j]));
                        //if(pares.get(words[j]).containsKey(words[j+1])){

                        //}
                        
                    }
                     
                
               
            }
            System.out.println(pares);

            for(String x : pares.keySet()){
                
            }
        }
        reader.close();
    }
}
