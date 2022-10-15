package Aula5.ex3;

public class circulo {
    private double raio;

    public circulo(double raio){
        this.raio = raio;
    }
    public void setCirculo(double raio){
        this.raio = raio;
    }
    public double getRaio(){
        return raio;
    }
    public void setRaio(double raio){
        this.raio = raio;
    }
    public double getArea(){
        return Math.PI*raio*raio;
    }
    public double getPerimetro(){
        return Math.PI*2*raio;
    }

    @Override
    public boolean equals(Object obj){
        if(this == obj){
            return true;
        }
        if(obj == null){
            return false;
        }
        if(getClass() != obj.getClass()){
            return false;
        }
        circulo other = (circulo) obj;
        if(raio != other.raio){
            return false;
        }
        return true;
    }
}
