package Aula8;

public class Motociclo implements KmPercorridosInterface {
    private String matricula;
    private String marca;
    private String modelo;
    private double potencia;
    private tipo tp;

    public Motociclo(String matricula ,String marca, String modelo , double potencia , tipo tp){
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        this.tp = tp;
    }

    public String getMatricula(){ return this.matricula;}
    public String getMarca(){ return this.marca;}
    public String getModelo(){ return this.modelo;}
    public double getPotencia(){ return this.potencia;}
    public tipo getTipo(){ return this.tp; }

    @Override
    public void trajeto(int kilometros) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public int ultimoTrajeto() {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int distanciaTotal() {
        // TODO Auto-generated method stub
        return 0;
    }

}
