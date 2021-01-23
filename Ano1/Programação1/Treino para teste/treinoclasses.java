import java.util.Scanner;
import java.io.*;

public class treinoclasses {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		aircraft Cessna172 = new aircraft();    // cria um objeto da classe aircraft
		
		aircraft piperSaratoga = new aircraft();  // novo objeto da classe aircraft
		
		Cessna172.passengers = 4;
		Cessna172.cruiseSpeed = 2200;
		Cessna172.fuelCapacity = 56.5;
		Cessna172.fuelBurnRate = 9.5;
		System.out.println("cessna 172 passengers : " + Cessna172.passengers);
		System.out.println("cessna 172 fuel burn rate : " + Cessna172.fuelBurnRate);
		
		piperSaratoga.passengers = 6;
		piperSaratoga.cruiseSpeed = 201;
		piperSaratoga.fuelCapacity = 1022.5;
		piperSaratoga.fuelBurnRate = 20.5;
		
		//~ System.out.println ("Piper Saratoga cruise speed: "+ piperSaratoga.cruiseSpeed);
		//~ System.out.println();
		//~ System.out.println("Cessna172");
		//~ cessna172.calculateEndurance();
		//~ System.out.println();
		//~ System.out.println("Piper Saratoga");
		//~ piperSaratoga.calculateEndurance();
		double enduranceCessna172=Cessna172.calculateEndurance();
		System.out.printf("cessna 172 endurance is %3.3f", enduranceCessna172);
	}
}

class aircraft{
	int passengers;			//number of people
	int cruiseSpeed; 		//kms per hour
	double fuelCapacity; 	//galloons
	double fuelBurnRate;  	//gallons peer hour
	
	double calculateEndurance(){
		double endurance;
		endurance = fuelCapacity/fuelBurnRate;
				return endurance;
		}



}

