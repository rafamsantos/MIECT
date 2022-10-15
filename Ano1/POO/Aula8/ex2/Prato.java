package Aula8.ex2;

import java.util.LinkedList;

public class Prato {
    private String nome;
    LinkedList<Alimento>composicao = new LinkedList<>();

    public Prato(String nome , LinkedList<Alimento> composicao){
        this.nome = nome;
        this.composicao = composicao;
    }

    public Prato(String string) {
    }

    public String getNome(){ return this.nome;}
    public LinkedList<Alimento> getComposicao(){ return this.composicao;}

    protected boolean addIngrediente(Alimento a) {
        if(composicao.contains(a) || a==null)
            return false;
        else {
            composicao.add(a);
            return true;
        }
    }
    public String toString(){
        return super.toString()+" , " + getNome() +"composto por ingredientes";
    }

}
