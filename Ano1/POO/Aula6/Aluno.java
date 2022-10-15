package Aula6;
import Aula5.ex1.*;

public class Aluno extends Pessoa {
    private int nmec=100;
    private Date insc;
    
    public Aluno(String nome , int nmec , Date insc){
        super(nome);
        this.nmec = nmec;
        this.insc = insc;
    }
    public Aluno(String nome , int nmec ,Date dataNasc , Date insc){
        super(nome , dataNasc);
        this.nmec = nmec;
        this.insc = insc;
    }
    public int getNMec(){nmec++;return nmec;}
    public Date getInsc(){return insc;}
    
    @Override
    public String toString(){
        return super.toString()+" | Nº mecanográfico : "+getNMec() + " | Data inscrição: "+getInsc();
    }
    
}
