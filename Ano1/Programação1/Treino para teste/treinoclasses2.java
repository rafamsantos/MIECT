import java.util.Scanner;
import java.io.*;


public class treinoclasses2 {
	
	public static void main (String[] args) {
		GroceryStore houstonStore = new GroceryStore();
		GroceryStore seattleStore = new GroceryStore();
		GroceryStore orlandoStore = new GroceryStore();
		houstonStore.apple = 567;		 //nº de maçãs
		houstonStore.priceApple= 0.30;  //euros por maçã
		houstonStore.Orange=453;		 //nº laranjas
		houstonStore.priceOrange=0.29;   //euros por laranja
		
		System.out.printf("São vendidas , por ano , %2d maçãs na loja de Houston\n",houstonStore.apple);
		System.out.println();
		
		System.out.printf("Cada maça é vendida por %.2f euros\n",houstonStore.priceApple);
		System.out.println();
		
		System.out.printf("São vendidas , por ano , %2d laranjas na loja de Houston\n",houstonStore.Orange);
		System.out.println();
		
		System.out.printf("Cada Laranja é vendida por %.2f euros\n",houstonStore.priceOrange);
		System.out.println();
		
		houstonStore.receita = (houstonStore.apple*houstonStore.priceApple) + (houstonStore.Orange*houstonStore.priceOrange);
		System.out.println();
		
		System.out.printf("A receita da mercearia foi de %3.2f euros ", houstonStore.receita); 
		System.out.println();

		System.out.println("Houston Store");
		houstonStore.calculateRevenue();
	
	
	}
}
class GroceryStore{
	int apple;
	double priceApple;
	int Orange;
	double priceOrange;	
	double receita;

void calculateRevenue(){
	double revenue = (apple*priceApple) + (priceOrange*Orange);
	System.out.println("The revenue from houston Store is " + revenue+ " euros ");
}
	
}

