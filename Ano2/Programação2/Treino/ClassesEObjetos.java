


public class ClassesEObjetos{
	
	public static void main (String[] args) {		
		funcionario machado = new funcionario();
			System.out.println(machado.nome);
			System.out.println(machado.idade);
			System.out.println(machado.cpf);
			System.out.println();
		
		funcionario rafa = new funcionario("rafa", 23, 12345);
			System.out.println(rafa.nome);
			System.out.println(rafa.idade);
			System.out.println(rafa.cpf);
			System.out.println();
			
		funcionario santos = new funcionario("santos");
			System.out.println(santos.nome);
			System.out.println(santos.idade);
			System.out.println(santos.cpf);
			System.out.println();
	}
}

