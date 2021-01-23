import static java.lang.System.*;
import java.util.Scanner;
import java.io.IOException;
import java.io.File;
import p2utils.KeyValueList;

public class CountWords
{

  public static void main(String[] args) {
    KeyValueList<Integer> counts = new KeyValueList<>();

    for (int a = 0; a < args.length; a++) { // Processa cada ficheiro
      File fin = new File(args[a]);
      // Using a try-with-resources:
      try (Scanner scf = new Scanner(fin)) {
        while (scf.hasNextLine()) { // Processa cada linha
          String line = scf.nextLine();
          // Divide a linha em "palavras", considerando como separador
          // qualquer sequência de 1 ou mais carateres não alfabéticos:
          String[] palavras = line.split("[^\\p{IsAlphabetic}]+");
          // (Sobre expressões regulares usadas no split: https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html)

          for (int i = 0; i < palavras.length; i++) { // Processa cada palavra
			String word = palavras[i].toLowerCase();
            // if word exists in dic, increase counter for it,
            if (counts.contains(word)) 
				counts.set(word, counts.get(word) + 1);
				
            // else create new entry with word, set it to 1
            else{
				counts.set(word, 1);
				}
          }
        }
      }
      catch (Exception e) {
        err.println("ERRO: " + e.getMessage());
      }
    }
    out.println(counts.toString("Results:\n", ";\n", "\nEnd"));
    mostFrequent(counts);
  }

  // Find and print the key with most occurrences
  // and its relative frequency.
  static void mostFrequent(KeyValueList<Integer> counts) {
	int sum = 0;
		int max = 0;
		String maxIndex = "";
		
		String[] keys = counts.keys();
	
		for(String key : keys) {
			int i = counts.get(key);
			if (i > max) {
				max = i;
				maxIndex = key;
			}
			sum += i;
		}
		
		System.out.printf("\nMost frequent word: %s\nFrequency:%f\n\n", 
					  maxIndex, 100.0*max/sum);
  }
}

