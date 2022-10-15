import java.util.Objects;

public class Provincia extends Regiao {
    private String nome;
    private int populacao;
    private String governador;

    public Provincia(String nome , int populacao ,String governador){
        super(nome, populacao);
        this.governador = governador;
    }

    public String getNome(){ return this.nome;}
    public int getPopulacao(){ return this.populacao; }
    public String getGovernador(){ return this.governador; } 
    
    public String toString(){
        return super.toString() + getPopulacao();
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Provincia)) {
            return false;
        }
        Provincia provincia = (Provincia) o;
        return Objects.equals(governador, provincia.governador);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(governador);
    }
}
