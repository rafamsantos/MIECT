package Aula8.ex2;

import java.util.LinkedList;

public class PratoDieta extends Prato{
    private double maxCal;

    public PratoDieta(String nome, LinkedList<Alimento> composicao , double maxCal) {
        super(nome, composicao);
        this.maxCal =maxCal;
    }

    public PratoDieta(String string, double maxCal) {
        super(string);
        this.maxCal = maxCal;
    }

    public double getMaxCal(){ return this.maxCal;}

    public String toString(){
        return super.toString() + " , "+getMaxCal();
    }
    
}
