package Aula8;

public class PesadoPassageiros extends Pesados{
    
    private double  nPassageiros;
    public PesadoPassageiros(String matricula, String marca, String modelo, double potencia, int nQuadro, double peso , double nPassageiros) {
        super(matricula, marca, modelo, potencia, nQuadro, peso);
        this.nPassageiros = nPassageiros;
    }
    
    public double getNPassageiros(){ return this.nPassageiros;}
    
}
