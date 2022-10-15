
public class Aluno extends Pessoa{
    private Date dataInsc;
    private int nMec;

    public Aluno(String nome , int cc , Date dataNasc , Date dataInsc){
        super(nome , cc , dataNasc);
        this.dataInsc = dataInsc;
    }
    public Aluno(String nome , int cc , Date dataNasc){
        super(nome , cc , dataNasc);
    }
    public Date getDataInsc(){ return this.dataInsc; }
    public int getNMec(){ return this.nMec;}
}
