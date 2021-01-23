import java.util.Scanner;


public class a9e81 {
	static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
	
	Ponto2D a[] = new Ponto2D[20]; 
	Ponto2D p;
	
	int i = 0;
	do{ 
		p= LerPonto();
		if(p.x!=0 || p.y!=0)
		{ 
			a[i]=p;
			i++;
		}
	
	  }
	while(p.x!=0 || p.y!=0);
	System.out.println("Pontos introduzidos");
	for (int j = 0; j<i ; j++)
	{
		PrintPonto(a[j]);
	}
	System.out.println(" A distancia entre pontos é : ");
		
}
	public static Ponto2D LerPonto(){
			Ponto2D pto = new Ponto2D();
			
			System.out.println("Introduza um ponto :");
			System.out.println("coordenada x : ");
				pto.x=sc.nextDouble();
			System.out.println("coordenada y : ");
				pto.y=sc.nextDouble();
	
			
				return pto;
			
	}
	
	public static void PrintPonto(Ponto2D p){
		System.out.printf(" ( %3.1f ; %3.1f )\n ",p.x,p.y);
		}
	public static double distancia(Ponto2D p1 ,Ponto2D p2){
		
		double d;
		d =Math.sqrt( Math.pow(p2.x-p1.x,2)+Math.pow(p2.y-p1.y,2));
		
		return d;
		
		}


}
	class Ponto2D{
		double x,y;}



