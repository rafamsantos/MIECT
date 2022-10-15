package Aula3;
import java.util.*;

public class ex4 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int n;
        int x;
        int i =1;
        
        int[] a = new int[20];
        System.out.println("Introduza um nº : ");
        n = sc.nextInt();
        a[0] = n;
        
        do{
            
            System.out.println("Introduza um nº : ");
            x = sc.nextInt();
            a[i] = x;
            i++;
            

        }while( x!=n );
        
   
        double m = media(a);
        int max = max(a);
        int min = min(a);

        System.out.println("Média: " + m);
        System.out.println("Máximo: " + max);
        System.out.println("Minimo: " + min);
        sc.close();
    }
    public static double media(int []a){
        int count = 0;
        int sum = 0;
        for(int i =0 ; i < a.length ; i++){
            if(a[i]==0){
                continue;
            }
            count++;
            sum +=a[i];
        }
        return sum/(count-1);

    }
    public static int max(int []a){
        int max=0;
        for(int i = 0; i < a.length; i++){
            if(a[i]>max){
                max = a[i];
            }
        }
        return max;

    }
    public static int min(int []a){
        int min = 4000;
        for(int i = 0; i < a.length; i++){
            if(a[i]==0){
                continue;
            }
            if(a[i]<min){
                min = a[i];
            }
        }
        return min;

    }
    
}
