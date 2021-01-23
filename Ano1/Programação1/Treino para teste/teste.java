import java.util.Scanner;


public class teste {
	
	static Scanner ler = new Scanner(System.in);
	
	public static void main (String[] args) {
		int[] notas = {4, 6, 7, 5, 4, 6, 6, 8, 11};
		int[] histo;
		double mediaf,mediat;
		System.out.printf("Introduza notas dos alunos(nota 0-10; 11 faltou): %n");
		notas = LerNotas[10];
 // lista notas
		listar(notas);
 // calcula histograma
		histo = Histograma(notas);
 // imprime histograma
		ImprimeHistograma(histo);
 // calcular média freq e total
		//~ mediaf= Medias(notas,'f');
		//~ mediat= Medias(notas,'t');
	}
	public static void LerNotas(int[] numNotas) {
		for(int i = 0; i < numNotas.length ; i++){
			System.out.println(notas[i]);
		}

 }


}

