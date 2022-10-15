package Aula8;

public class PesadoMercadorias extends Pesados {
    private double cargaMaxima;
    public PesadoMercadorias(String matricula, String marca, String modelo, double potencia, int nQuadro, double peso , double cargaMaxima) {
        super(matricula, marca, modelo, potencia, nQuadro, peso);
        this.cargaMaxima = cargaMaxima;
    }
    
    public double getCargaMaxima(){ return this.cargaMaxima;}
    
}
