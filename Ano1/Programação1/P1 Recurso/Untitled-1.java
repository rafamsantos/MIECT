import java.util.Scanner;
import java.io*;

public class untitled {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int c, l;
        int a = c * l;
        int p = (c * 2) + (l * 2);
        System.out.println("Qual a largura do retângulo? ");
        l = sc.nextInt();

        System.out.println("Qual o comprimento do retângulo?");
        c = sc.nextInt();

        System.out.printf("A área do retangulo é :%2d", a);
        System.out.printf("o perímetro do retângulo  é: %2d", p);
    }
}
