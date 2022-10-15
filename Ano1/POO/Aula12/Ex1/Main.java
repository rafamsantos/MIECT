package Ex1;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws FileNotFoundException {
        Scanner sc = new Scanner(new File("movies.txt"));

        int countW = 0;
        int key = -1;
        int repeatedWords = 0;
        HashMap<String ,Integer> wordKeys = new HashMap<>();

        while(sc.hasNextLine()){
            String[] words = sc.nextLine().split("[\\s@&.?$+-,]+");
            for(int i =0; i < words.length ; i++){
                countW++;
                wordKeys.put(words[i],++key);       // armazena palavras num hashmap
            }
        }
        for(String s : wordKeys.keySet() ){
            if(wordKeys.containsKey(s)){    // verifica se a chave está no map e se estiver conta a palavra
                repeatedWords++;
            }
        }
        int difWords = countW-repeatedWords;

        System.out.println("Número total de Palavras : " + countW);
        System.out.println("Número de diferentes palavras : " + difWords);

    }
    
}
