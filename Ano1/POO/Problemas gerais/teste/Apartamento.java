public class Apartamento extends Alojamentos {

    private int nQuartos;

    public Apartamento(String codigo , String nome , String local , double ppnoite, boolean dispo , double avaliacao , int nQuartos){
        super(codigo, nome, local, ppnoite, dispo, avaliacao);
        this.nQuartos = nQuartos;
    }
    
    public int getNQuartos(){ return this.nQuartos;}
}
