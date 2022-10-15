import java.util.Objects;

public class Estado extends Regiao {
    
    private Localidade capital;
    
    public Estado(String nome, int populacao, TipoLocalidade tl , Localidade capital ) {
        super(nome, populacao);
        this.capital = capital;
    
    }
    public Estado(String nome, int populacao, Localidade capital ) {
        super(nome, populacao);
        this.capital = capital;
    
    }

    public Localidade getCapital(){ return this.capital; }

    public String toString(){
        return super.toString() + "(Capital : Cidade ";
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Estado)) {
            return false;
        }
        Estado estado = (Estado) o;
        return Objects.equals(capital, estado.capital);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(capital);
    }

     

    
}
