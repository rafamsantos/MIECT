import java.util.Objects;

public class Regiao {
    private String nome;
    private int populacao;

    public Regiao(String nome , int populacao){
        this.nome = nome; 
        this.populacao = populacao;
    }
    public String getNome(){ return this.nome;}
    public int getPopulacao(){ return this.populacao; }

    public String toString(){ 
        return super.toString() + " População : "+getPopulacao();  
    }
    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Regiao)) {
            return false;
        }
        Regiao regiao = (Regiao) o;
        return Objects.equals(nome, regiao.nome) && populacao == regiao.populacao;
    }

    @Override
    public int hashCode() {
        return Objects.hash(nome, populacao);
    }
}
