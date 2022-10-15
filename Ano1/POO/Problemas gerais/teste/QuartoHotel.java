public class QuartoHotel extends Alojamentos {

    private enum tipoQuarto{
        single , doubler, twin , triple;
    }
    private tipoQuarto tq;
    
    public QuartoHotel(String codigo , String nome , String local , double ppnoite, boolean dispo , double avaliacao, tipoQuarto tq ){
        super(codigo, nome, local, ppnoite, dispo, avaliacao);
        this.tq = tq;
    }

    public tipoQuarto getTq(){ return this.tq;}
    
}
