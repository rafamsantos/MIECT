package Aula8;

public class EmpAlugViaturas {
    private String nome;
    private String codigoPostal;
    private String email;
    

    public EmpAlugViaturas(String nome , String codigoPostal , String email){
        this.nome = nome;
        this.codigoPostal = codigoPostal;
        this.email = email;
    }

    public String getNome(){ return this.nome;}
    public String getCodigoPostal(){ return this.codigoPostal;}
    public String getEmail(){return this.email;}
}
