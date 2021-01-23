import java.util.Scanner;


public class sem_titulo {
	
	public static void main (String[] args) {		

int[]notas={2,4,3,1,5,6,7,4,5,4};		
leitura(notas);	

System.outprintf( "A nota %2d apareceu %2d vezes",num ,contador);
	
	
 }
public static int leitura(int[]notas){
	int i;
	for (i = 0 ; i<notas.length ; i++)
	{
		System.out.printf("A nota do aluno %2d foi %2d : \n",i+1,notas[i]);
	}
	
return i;

}
public static int contador(int num,int []notas){	
 int contador=0;
 for (int j = 0; j<notas.length;j++){
		if(notas[j]== num){
		
		contador ++;
	}
  }return contador;
 }

}


