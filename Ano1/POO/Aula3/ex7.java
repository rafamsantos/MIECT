package Aula3;
import java.util.*;

public class ex7 {
    public static void main(String[] args){
        int x;
        int count=0;
        String r ="";
        Scanner sc = new Scanner(System.in);
        Scanner s = new Scanner(System.in);

        int secret =(int)(100.0*Math.random())+1;
        System.out.println("Adivinha o nº ");
        do{
            System.out.print("\n -> ");
            x = sc.nextInt();
            if(x<secret){
                System.out.println("abaixo");
                count++;
            }else if(x>secret){
                System.out.println("acima");
                count++;
            }else{
                System.out.println("Acertou !!");
                System.out.println("tentativas : "+ count);
                System.out.println("Deseja continuar(s/n) ? ");
                r = s.nextLine();
            }
        }while(x != secret || r.equals("s"));

        sc.close();
        s.close();

    }
    
}
