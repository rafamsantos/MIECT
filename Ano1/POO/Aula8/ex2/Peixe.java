package Aula8.ex2;

public class Peixe extends Alimento{
    private TipoPeixe tp;

    public Peixe(TipoPeixe tp , double proteinas , double calorias , double peso){
        super(proteinas, calorias , peso);
        this.tp = tp;
    }

    public TipoPeixe getTipoPeixe(){ return this.tp;}

    public String toString(){
        return super.toString()+ " , "+ getTipoPeixe();
    }
}
