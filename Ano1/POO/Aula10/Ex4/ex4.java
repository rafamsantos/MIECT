package Aula10.Ex4;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.*;

public class ex4 {
    public static void main(String[] args) throws FileNotFoundException {
        Scanner input = new Scanner(new FileReader("C:/Users/rafa_/Desktop/Universidade/2ºAno/2ºSemestre/POO/POO/src/Aula10/Ex4/words.txt"));
        
        Map<String, ArrayList<Integer>> twoLetterWords = new HashMap<String, ArrayList<Integer>>();
        LinkedList<String> finishInS = new LinkedList<String>();
        
        while(input.hasNext()){
            String word=input.next();
            //System.out.println(word);                               // imprime a palavra
            twoLetterWords.put(word , new ArrayList<Integer>());
            if(word.length()>= 2){
                twoLetterWords.get(word).add(word.length());        // map com as palavras com + de 2 caracteres e o respetivo n de caracteres
            }
            if(word.charAt(word.length()-1) == 's'){                // caso o ultimo caracter == 's', adiciona na LinkedList
                finishInS.add(word);
            }
            // Alinea d)
          /*   for (Map.Entry<String, ArrayList<Integer>> pair : twoLetterWords.entrySet()) {
                for(int i =0; i < pair.getKey().length() ; i++){    // percorre a chave
                    if(!Character.isLetter(pair.getKey().charAt(i))){   // se o caracter nao for uma letra
                        twoLetterWords.remove(pair.getKey());       // remove elemento que o possui
                    }
                }
            }*/
        }
        System.out.println("\n");

        System.out.println(twoLetterWords);
        System.out.println("\nLetters finished in 's':");
        for(int i = 0; i < finishInS.size() ; i++){
            System.out.println(finishInS.get(i));
        }



    }
}
