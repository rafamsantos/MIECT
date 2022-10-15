package Aula6;
import java.util.Arrays;

public class Conjunto {
    private int numbers[] = new int[10];
    public Conjunto(){}

    public void insert(int n){
        int count = 0;
        for(int i = 0; i < numbers.length ; i++){
            if(n == numbers[i]){
                count++;        // verifica se já há algum nº igual no array
            }
        }
        if(count == 0){ // caso nao haja elementos repetidos
            for(int i =0; i<numbers.length ; i++){  // percorre array
                if(numbers[i]==0){  // quando encontrar a primeira posição 'vazia'
                    numbers[i]=n;   // atribui a essa posição o valor desejado
                }
                if(i == (numbers.length-1)){  // caso i seja a ultima posição do array
                    numbers = Arrays.copyOf(numbers, numbers.length+5); // adiciona 5 posições ao array
                }
            }
        }
    }
    public boolean contains(int n){
        int count = 0;
        for(int i = 0; i < numbers.length ; i++){
            if(n == numbers[i]){
                count++;        // verifica se já há algum nº igual no array
            }
        }
        if(count != 0){
            return true;   // indica que está no conjunto
        }
        return false;   // indica que nao está no conjunto caso nao se verifique a condição
    }
    public void remove(int n){
        for(int i = 0; i < numbers.length ; i++){   // atribui valor 0 à posição a eliminar
            if(n == numbers[i]){
                numbers[i] = 0;
            }
        }
        int pos = 0;
        for(int i=0; i<numbers.length; i++){    // retira 0s
           if(numbers[i]!=0){
              numbers[pos]=numbers[i];
              pos++;
           }    
        }
        while(pos<numbers.length) {     // preenche as posições 'livres' com 0s
           numbers[pos] = 0;
           pos++;
        }
    }
    public void empty(){
        for(int i =0 ; i < numbers.length; i++){
            numbers[i] = 0;
        }
    }
    //public String toString(){
        
    //}
    public int size(){
        int count =0;
        for(int i = 0; i<numbers.length ; i++){
            if(numbers[i]==0) continue;
            else count++;
        }
        return count;
    }
    public Conjunto unir(Conjunto add){
        int j = 0;
        for(int i = 0; i < add.numbers.length ; i++){
            if(add.numbers[i] == 0){        // add.numbers[i] == 0 -> final do array -> começa a copiar o 2º array
                if(numbers[j]==0) break;    // numbers[j]==0 -> final do array -> para de copiar
                add.numbers[i]=numbers[j];  // substitui 0 por elemento do array numbers
                j++;
            } 
        }
        return add; // add passa a ter o conjunto add.numbers + numbers
    }
    public Conjunto subtrair(Conjunto dif){
        for(int i = 0; i< dif.numbers.length ; i++){    // percorre array do Conjunto dif
            for (int j =0; j < numbers.length ; j++){   // percorre array This
                if(dif.contains(numbers[j])==true){     // se conjunto dif tiver um elemento de This 
                    dif.remove(numbers[j]); // é retirado o elemento do array dif.numbers
                }else if(dif.numbers[i]==0 && dif.contains(numbers[j])==false && numbers[j]!=0){// caso a posição esteja 'vazia' e o nº nao esteja contido em This e esta nao seja vazia
                    dif.numbers[i]=numbers[j];  // caso se verifique, posição 'vazia' é substituida pelo nº de This
                }else if(dif.numbers[i]!=0){// caso a posição nao seja 'vazia' e o elemento nao esteja em This(verificado na 1ª condição if)
                    dif.insert(numbers[j]); // insere o elemento numa posição vazia de dif.numbers
                }
            }
        }
        return dif;
    }
    public Conjunto interset(Conjunto inter){
        for(int i = 0; i<inter.numbers.length ; i++){
            for(int j = 0; j<numbers.length ; j++){
                if(inter.contains(numbers[j])== false){ // caso inter nao contenha o nº de This
                    inter.remove(inter.numbers[i]); // esse nº é eliminado do array
                }
            }
        }
        return inter;
    }
}


