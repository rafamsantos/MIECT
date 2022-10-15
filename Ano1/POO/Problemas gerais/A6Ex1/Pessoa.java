
public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    public Pessoa(String nome , int cc , Date dataNasc){
        this.nome = nome; 
        this.cc = cc;
        this.dataNasc = dataNasc;
    }
    public String getName(){ return this.nome;}
    public int getcc(){ return this.cc;}    
    public Date getDate(){ return this.dataNasc;}

    public String toString(){
        return "Nome: "+ getName() + ", cc: "+ getcc() + " , Data de Nascimento : "+ getDate();
    }

}
