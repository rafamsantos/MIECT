package Aula7.ex1;

public class retangulo extends Forma {
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

    @Override
    public double getPeri(double h, double l1, double l2) {
        return altura+altura+comprimento+comprimento;
    }

    @Override
    public double getArea(double h, double l1, double l2) {
        return altura*comprimento;
    }
}
