public class Alojamentos {
    private String codigo;
    private String nome;
    private String local;
    private double ppnoite;
    private boolean dispo;
    private double avaliacao;

    public Alojamentos(String codigo , String nome , String local , double ppnoite, boolean dispo , double avaliacao){
        this.codigo = codigo ;
        this.nome = nome;
        this.local = local;
        this.ppnoite = ppnoite;
        this.dispo = dispo;
        this.avaliacao = avaliacao;

    }
    
    private String getCodigo(){ return this.codigo; }
    private String getNome(){ return this.nome; }
    private String getLocal(){ return this.local; }
    private double getPpnoite(){ return this.ppnoite; }
    private boolean getDispo(){ return this.dispo; }
    private double getAvaliacao(){ return this.avaliacao; }
    
}
