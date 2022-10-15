package Aula8;

public class Pesados {
    private String matricula;
    private String marca;
    private String modelo;
    private double potencia;
    private int nQuadro;
    private Double peso;

    public Pesados(String matricula , String marca, String modelo , double potencia , int nQuadro , double peso){
        this.matricula = matricula;
        this.marca =marca;
        this.modelo = modelo;
        this.nQuadro = nQuadro;
        this.peso = peso;
    }
    public String getMatricula(){ return this.matricula;}
    public String getMarca(){ return this.marca;}
    public String getModelo(){ return this.modelo;}
    public double getPotencia(){ return this.potencia;}
    public int getNQuadro(){ return this.nQuadro;}
    public double getPeso(){ return this.peso;}
    
}
