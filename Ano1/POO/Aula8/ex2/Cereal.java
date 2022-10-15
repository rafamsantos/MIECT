package Aula8.ex2;

public class Cereal extends Alimento {
    private String nome;

    public Cereal(String nome, double proteinas , double calorias , double peso){
        super(proteinas,calorias,peso);
        this.nome = nome;
    }

    public String getNome(){ return this.nome;}

    public String toString(){
        return super.toString() + " , " + getNome();
    }
}
