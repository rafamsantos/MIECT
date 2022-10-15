package Aula5.ex3;

public class retangulo {
    private double altura;
    private double comprimento;

    public retangulo (double altura , double comprimento){
        this.altura=altura;
        this.comprimento =comprimento;
    }
    
    public double getAltura(){
        return altura;
    }
    public double getComprimento(){
        return comprimento;
    }
    public double getArea(){
        return altura*comprimento;
    }
    public double getPerimetro(){
        return altura+altura+comprimento+comprimento;
    }
    public void setAltura(double altura){
        this.altura = altura;
    }
    public void setComp(double comprimento){
        this.comprimento = comprimento;
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
        retangulo other = (retangulo)obj;
        if(altura != other.altura){
            return false;
        }
        if(comprimento != other.comprimento){
            return false;
        }
        return true;
    }
}
