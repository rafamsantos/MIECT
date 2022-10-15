package Aula8;

public class Taxi extends AutoLigeiro {
    private int NLicenca;

    public Taxi(String matricula , String marca , String modelo , double Potencia , int nQuadro , double capBagageira,int NLicenca){
        super(matricula , marca , modelo , Potencia , nQuadro , capBagageira);
        this.NLicenca = NLicenca;
    }

    public int GetNLicenca(){return this.NLicenca;}

    
}
