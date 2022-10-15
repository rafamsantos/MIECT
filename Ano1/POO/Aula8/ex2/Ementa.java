package Aula8.ex2;

import java.util.LinkedList;

public class Ementa {
    private String nome;
    private String local;
    LinkedList<Prato> pratos = new LinkedList<>();
    
    public Ementa(String nome , String local){
        this.nome = nome;
        this.local = local;
    }

    public String getNome(){ return this.nome;}
    public String getLocal(){ return this.local;}
    public LinkedList<Prato> getPratos(){ return this.pratos;}

    public void addPrato(Prato prato, DiaSemana diaSemana) {
        
    }

    
    //public String toString(){
        //return super.toString()+"Prato "+addPrato(prato, diaSemana);
    //}
}
