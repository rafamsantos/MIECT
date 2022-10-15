package Aula8.ex2;

public class Carne extends Alimento {

    private VariedadeCarne vc;

    public Carne( VariedadeCarne vc,double calorias, double proteinas , double peso ){
        super(calorias,proteinas,peso);
        this.vc = vc;
    }

    public VariedadeCarne getVc(){ return this.vc;}
    
    public String toString(){
        return super.toString() + " , " + getVc();
    }
}
