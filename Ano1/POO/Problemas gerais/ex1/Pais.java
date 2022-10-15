import java.util.ArrayList;
import java.util.Objects;

public class Pais {
    private String nome;
    private Localidade capital;
    private ArrayList<Regiao> regioes = new ArrayList<Regiao>();

    public Pais(String nome){
        this.nome = nome;
    }
    public Pais(String nome , Localidade capital){
        this.nome = nome;
        this.capital = capital;
    }
    public String getNome(){ return this.nome;}
    public Localidade getCapital(){ return this.capital;}
    public ArrayList<Regiao> getRegioes(){ return this.regioes;}
    
    public void addRegiao(Regiao o) {
        if(!regioes.contains(o)){
            regioes.add(o);
        }
    }


    public int getPopulacao(){
        int pop = 0;
        for(Regiao r : regioes){
            pop += r.getPopulacao();
        }
        return pop;
    }

    public String toString(){
        return "Pais : "+getNome() +", População : "+getPopulacao()+" (Capital : "+getCapital();
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Pais)) {
            return false;
        }
        Pais pais = (Pais) o;
        return Objects.equals(nome, pais.nome) && Objects.equals(capital, pais.capital) && Objects.equals(regioes, pais.regioes);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nome, capital, regioes);
    }
    
}
