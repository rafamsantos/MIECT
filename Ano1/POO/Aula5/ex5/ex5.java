package Aula5.ex5;
import java.util.*;
public class ex5 {
    static Scanner sc = new Scanner(System.in);
    static Scanner s = new Scanner(System.in);
    public static void main(String[] args) {
    
        int op;
        LinkedList<Utilizador> user = new LinkedList<>();
        LinkedList<Livro> books = new LinkedList<>();
        do{
            System.out.println("1 - inscrever utilizador");
            System.out.println("2 - remover utilizador");
            System.out.println("3 - imprimir lista de utilizadores");
            System.out.println("4 - registrar um novo livro");
            System.out.println("5 - imprimir lista de livros");
            System.out.println("6 - Emprestar");
            System.out.println("7 - devolver");
            System.out.println("0 -exit");
            System.out.print(" -> ");
            op = sc.nextInt();
            switch(op){
                case 1 : insertUser(user);
                    break;
                case 2: removeUser(user);
                    break;
                case 3:printUsers(user);
                    break;
                case 4: regBook(books);
                    break;
                case 5: printBookList(books);
                    break;
                case 6: lendBook();
                    break;
                case 7: returnBook();
                    break;
                case 0 : System.out.println("Fim do programa.");
                    break;
                }
        }while(op != 0);
    }
    public static void insertUser(LinkedList<Utilizador> user){
        System.out.println("Nome de utilizador : ");
        String nome = s.nextLine();
        System.out.println("Numero mecanográfico : ");
        int nmec = sc.nextInt();
        System.out.println("Curso : ");
        String curso = s.nextLine();
        Utilizador u = new Utilizador(nome, nmec, curso);
        
        user.add(u);
        
    }
    public static void removeUser(LinkedList<Utilizador> user){
        System.out.println("Numero mecanografico a eliminar : ");
        int eliminar = sc.nextInt();
        for(int i = 0; i < user.size() ; i++){
            if(eliminar == user.get(i).getNmec()){
                user.remove(user.get(i));
            }
        }
    }
    public static void printUsers(LinkedList<Utilizador> user){
        for(int i = 0; i< user.size() ; i++){
            System.out.println("Nome : "+ user.get(i).getNome()+ " | Nº Mec : " +user.get(i).getNmec() + " | Curso : "+ user.get(i).getCurso());
        }
    }
    public static void regBook(LinkedList<Livro> books){
        System.out.println("ID livro : ");
        int id = sc.nextInt();
        System.out.println("Titulo : ");
        String titulo = s.nextLine();
        System.out.println("Tipo de empréstimo (CONDICIONAL / NORMAL) : ");
        String te = s.nextLine();

        Livro b = new Livro(id , titulo , te);
        books.add(b);


    }
    public static void printBookList(LinkedList<Livro> books){
        for(int i = 0; i< books.size() ; i++){
            System.out.println("ID : "+ books.get(i).getId()+ " | Titulo : " +books.get(i).getTitulo() + " | Tipo de empréstimo : "+ books.get(i).getTipoEmprestimo());
        }
    }
    public static void lendBook(){

    }
    public static void returnBook(){}
    
}
