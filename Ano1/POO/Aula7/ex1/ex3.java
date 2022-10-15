package Aula7.ex1;
import java.util.*;

public class ex3 {
    static Scanner sc = new Scanner(System.in);
    static Scanner s = new Scanner(System.in);
    public static void main(String[] args) {
        double raio=0,l1=0,l2=0,h=0, comprimento=0 , altura = 0;

        circulo c = new circulo(raio);
        retangulo r = new retangulo(altura, comprimento);
        triangulo t = new triangulo(h, l1, l2);

        LinkedList<circulo> circle = new LinkedList<>();
        LinkedList<retangulo> rectangle = new LinkedList<>();
        LinkedList<triangulo> triangle = new LinkedList<>();

        int op;
        do{
            System.out.println("1-Inserir circulo.");
            System.out.println("2-Inserir triangulo.");
            System.out.println("3-Inserir retângulo.");
            System.out.println("4-Listar figuras.");
            System.out.println("5-Comparar figuras.");
            System.out.println("0-Terminar programa.");
            System.out.println("opção -> ");
            op = sc.nextInt();

            switch(op){
                case 1: insertCircle(c , circle);
                    break;
                case 2 : insertTriangle(t,triangle);
                    break;
                case 3 : insertRectangle(r , rectangle);
                    break;
                case 4: listFigures(circle , triangle , rectangle);
                    break;
                case 5: compareFigures(circle , triangle , rectangle);
                    break;
                case 0 : System.out.println("Fim do programa.");
                    break;
                default:  System.out.println("Input inválido.");
                    break;
            }
        }while(op != 0);
    }
    public static void insertCircle(circulo c , LinkedList<circulo> circle){
        System.out.println("Raio do circulo : ");
        double r = sc.nextDouble();
        c.setRaio(r);
        circle.add(c);
    }
    public static void insertTriangle(triangulo t , LinkedList<triangulo> triangle){
        System.out.println("hipotenusa : ");
        double h = sc.nextDouble();
        System.out.println("cateto 1 : ");
        double l1 = sc.nextDouble();
        System.out.println("cateto 2 : ");
        double l2 = sc.nextDouble();
        t.setH(h);
        t.setL1(l1);
        t.setL2(l2);
        triangle.add(t);

    }
    public static void insertRectangle(retangulo r , LinkedList<retangulo> rectangle){
        System.out.println("Altura : ");
        double altura = sc.nextDouble();
        System.out.println("Comprimento : ");
        double comprimento = sc.nextDouble();
        r.setAltura(altura);
        r.setComp(comprimento);
        rectangle.add(r);
    }
    public static void listFigures(LinkedList<circulo> circle,LinkedList<triangulo> triangle , LinkedList<retangulo> rectangle){
        System.out.println("CIRCULOS : ");
        for(int i  = 0 ; i < circle.size(); i++){
            System.out.println(" Circulo "+(i+1)+ ": Raio - " + circle.get(i).getRaio() + " | Área - " + circle.get(i).getArea() + " | Perímetro - " + circle.get(i).getPerimetro());        }
        System.out.println();
        System.out.println("RETANGULOS : ");
        for(int i  = 0 ; i < rectangle.size(); i++){
           System.out.println(" Retangulo " +(i+1)+": Comprimento - " + rectangle.get(i).getComprimento() +" | Altura - " + rectangle.get(i).getAltura() + " | Área- " + rectangle.get(i).getArea() + " | Perímetro- " + rectangle.get(i).getPerimetro() );        
        }
        System.out.println();
        System.out.println("TRIANGULOS: ");
        for(int i  = 0 ; i < triangle.size(); i++){
           System.out.println( " Triangulo "+(i+1)+": Area - "+ triangle.get(i).getArea(triangle.get(i).getH(), triangle.get(i).getL1(), triangle.get(i).getL2())+ " | Perimetro - "+ triangle.get(i).getPeri(triangle.get(i).getH(), triangle.get(i).getL1(), triangle.get(i).getL2()));
        }
    }
    public static void compareFigures(LinkedList<circulo> circle,LinkedList<triangulo> triangle , LinkedList<retangulo> rectangle){
        System.out.println("Que figuras quer comparar ? (c,t,r)");
        String fig = s.nextLine();
        if(fig.equals("c")){
            System.out.println("Índice do 1º circulo : ");
            int j = sc.nextInt();
            System.out.println("Índice do 2º circulo : ");
            int k = sc.nextInt();
            System.out.println("As figuras são iguais ? R:"+circle.get(j).equals(k));
        }
        if(fig.equals("t")){
            System.out.println("Índice do 1º triangulo : ");
            int j = sc.nextInt();
            System.out.println("Índice do 2º triangulo : ");
            int k = sc.nextInt();
            System.out.println("As figuras são iguais ? R:"+triangle.get(j).equals(k));
        }
        if(fig.equals("r")){
            System.out.println("Índice do 1º retangulo : ");
            int j = sc.nextInt();
            System.out.println("Índice do 2º retangulo : ");
            int k = sc.nextInt();
            System.out.println("As figuras são iguais ? R:"+rectangle.get(j).equals(k));
        }
        

    }
}
