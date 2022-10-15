import java.util.Objects;

public class Localidade {
    private String nome;
    private int populacao;
    private TipoLocalidade tl;

    public Localidade(String nome , int populacao , TipoLocalidade tl){
        this.nome = nome;
        this.populacao = populacao;
        this.tl = tl;
    }

    public Localidade(String nome, int populacao){
        this.nome = nome;
        this.populacao = populacao;
    }
    
    public String getNome(){ return this.nome;}
    public int getPopulacao(){ return this.populacao; }
    public TipoLocalidade getTL(){ return this.tl; }

    public String toString(){
        return getTL() + " " +getNome() + ", População : "+getPopulacao();
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Localidade)) {
            return false;
        }
        Localidade localidade = (Localidade) o;
        return Objects.equals(nome, localidade.nome) && populacao == localidade.populacao && Objects.equals(tl, localidade.tl);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nome, populacao, tl);
    }

}
