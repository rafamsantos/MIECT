package Aula6;

import Aula5.ex1.*;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    public Pessoa(String nome , int cc , Date dataNasc){
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }
    public Pessoa(String nome , Date dataNasc){
        this.nome = nome;
        this.dataNasc = dataNasc;
    }
    public Pessoa(String nome ){
        this.nome = nome;
    }
    public String getName(){return this.nome;}

    public int getCC(){return this.cc;}

    public Date getDataNAsc(){return this.dataNasc;}

    public void setNome(String nome){this.nome = nome;}

    public void setCC(int cc){this.cc = cc;}

    public void setDataNasc(Date dataNasc){this.dataNasc = dataNasc;}

    @Override
    public String toString(){
        return getName() +" ; Data de Nascimento: "+getDataNAsc();
    }

    @Override
    public boolean equals(Object obj){
        if(this == obj){
            return true;
        }
        if( obj == null){
            return false;
        }
        if(getClass() != obj.getClass()){
            return false;
        }
        Pessoa other = (Pessoa)obj;
        if(nome != other.nome){
            return false;
        }
        if(cc != other.cc){
            return false;
        }
        if(dataNasc != other.dataNasc){
            return false;
        }
        return true;
    }
    public int hashCode(){
        int prime = 31;
        int result = 1;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result +((dataNasc == null)?0 :dataNasc.hashCode());
        return result;
    }
    
}
