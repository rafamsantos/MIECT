public class Contacto {
  private String nome;
  private String telefone;
  private String email;
  
	public Contacto(String Nome,String Telefone , String Email){
		this.nome=Nome;
		this.telefone=Telefone;
		this.email=Email;
	}
	
	public Contacto(String Nome,String Telefone){
		this.nome=Nome;
		this.telefone=Telefone;
	}
	public String Nome(){
		return nome.toUpperCase();
		}	
	public String Telefone(){
		return telefone;
		}	
	public String Email(){
		return email;
		}	
}
