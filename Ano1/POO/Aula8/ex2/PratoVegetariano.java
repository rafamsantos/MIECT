package Aula8.ex2;

import java.util.LinkedList;

public class PratoVegetariano extends Prato implements AlimentoVegetariano {
    private double maxCal;  
    private LinkedList<AlimentoVegetariano> composicao = new LinkedList<>();

    public PratoVegetariano(String nome,LinkedList<Alimento>composicao, double maxCal){
        super(nome,composicao);
        this.maxCal = maxCal;
    }


    public PratoVegetariano(String string) {
        super(string);
    }


    public double getMaxCal(){ return this.maxCal;}
   
}
