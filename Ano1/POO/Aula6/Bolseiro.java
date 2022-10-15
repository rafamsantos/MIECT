package Aula6;
import Aula5.ex1.*;
public class Bolseiro extends Aluno{
    private double bolsa;

    public Bolseiro(String nome , int cc ,Date dataNasc ,double bolsa ){
        super(nome , cc , dataNasc);
        this.bolsa = bolsa;
    }
    public double getBolsa(){return bolsa;}
    public void setBolsa(double bolsa){ this.bolsa = bolsa;}
    
    @Override
    public String toString(){
        return super.toString()+" | Bolsa: "+getBolsa();
    }

}
