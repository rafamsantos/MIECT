package Aula5.ex5;

public class Livro {
    private int id;
    private String titulo;
    private String tipoEmprestimo;

    public Livro(String titulo , String tipoEmprestimo){
        this.titulo = titulo;
        this.tipoEmprestimo = tipoEmprestimo;
    }
    public Livro(int id ,String titulo , String tipoEmprestimo){
        this.id = id;
        this.titulo = titulo;
        this.tipoEmprestimo = tipoEmprestimo;
    }

    public Livro(String titulo){
        this.titulo = titulo;
    }
    public String getTipoEmprestimo(){
        return tipoEmprestimo;
    }
    public String getTitulo(){
        return titulo;
    }
    public int getId(){
        return id;
    }
    public void setTipoEmprestimo(String emprestimo){
        this.tipoEmprestimo = emprestimo;
    }
    public String toString(){
        return " Livro "+getId() + " ; "+ getTitulo()+ " ; " + getTipoEmprestimo();
    }
}
