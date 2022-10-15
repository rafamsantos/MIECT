package Aula5.ex5;

public class Utilizador {
    private String nome;
    private int nMec;
    private String curso;

    public Utilizador(String nome , int nMec , String curso){
        this.nome = nome;
        this.nMec =nMec;
        this.curso =curso;
    }
    public int getNmec(){
        return nMec; 
    }
    public String getNome(){
        return nome;
    }
    public String getCurso(){
        return curso;
    }
    public void setnMec(int nMec){
        this.nMec = nMec;
    }
    public String toString(){
        return "Aluno: " + getNmec() +" ; " + getNome()+" ; "+getCurso();
    }
}
