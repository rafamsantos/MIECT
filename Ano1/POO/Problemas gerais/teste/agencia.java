import java.util.ArrayList;

public class agencia {
    private ArrayList<Alojamentos> aloj = new ArrayList<>();
    private ArrayList<Carro> viaturaAlu = new ArrayList<>();
    private String nome;
    private String endereco;

    public agencia(ArrayList<Alojamentos> aloj,ArrayList<Carro> viaturaAlu,String nome , String endereco){
        this.aloj = aloj;
        this.viaturaAlu = viaturaAlu;
        this.nome = nome;
        this.endereco = endereco;
    }

    public ArrayList<Alojamentos> getAloj(){ return this.aloj;}
    public ArrayList<Carro> getViAlug(){return this.viaturaAlu;}
    public String getNome(){return this.nome;}
    public String getEndereco(){return this.endereco;}

}
