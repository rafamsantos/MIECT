package Aula8;

public class AutoLigeiro {
    private String matricula;
    private String marca;
    private String modelo;
    private double potencia;
    private int nQuadro;
    private double capBagageira;

    public AutoLigeiro(String matricula , String marca , String modelo , double potencia , int nQuadro , double capBagageira){
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        this.nQuadro = nQuadro;
        this.capBagageira = capBagageira;
    }
    public String getMatricula(){ return this.matricula;}
    public String getMarca(){ return this.marca;}
    public String getModelo(){ return this.modelo;}
    public double getPotencia(){ return this.potencia;}
    public int getNQuadro(){ return this.nQuadro;}
    public double capBagageira(){ return this.capBagageira;}     
}
