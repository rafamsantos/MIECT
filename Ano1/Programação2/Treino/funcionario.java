


public class funcionario  {
	String nome;
	int idade;
	int cpf;
	
	funcionario(){
		this.nome="machado";
		this.idade=18;
		this.cpf=123456;
		
		}
		
	funcionario(String NovoNome, int NovaIdade, int NovoCpf){
		this.nome=NovoNome;
		this.idade = NovaIdade;
		this.cpf = NovoCpf;	
	}
	funcionario(String NovoNome){
		this.nome=NovoNome;
		this.idade=24;
		this.cpf=456;
		}
}

