

public class Bolseiro extends Aluno {

    private int bolsa;
    public Bolseiro(String nome, int cc, Date dataNasc, int bolsa) {
        super(nome, cc, dataNasc);
        this.bolsa = bolsa;
    }

    public int getBolsa(){return this.bolsa;}
    public void setBolsa(int b){
        this.bolsa = b;
    }
}
