package Aula8.ex2;

public class Alimento {

    private double proteinas;
    private double calorias;
    private double peso;


    public Alimento(double proteinas , double calorias , double peso){
        this.proteinas = proteinas;
        this.calorias = calorias;
        this.peso = peso;
    }

    public double getProteinas(){ return this.proteinas;}
    public double getCalorias(){ return this.calorias;}
    public double getPeso(){ return this.peso;}

    public String toString(){
        return super.toString()+getProteinas()+" , "+getCalorias()+" , "+getPeso();
    }

}
