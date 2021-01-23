public class TestContacto2 {
  public static void main(String[] args) {
    contacto2[] cl = new contacto2[4];
    cl[0] = new contacto2("Ana", "978676760");
    cl[1] = new contacto2("Rita", "867367834", "rita@gmail.com");
    cl[2] = new contacto2("Paulo", "897476388", "paulo@hotmail.com");
    cl[3] = new contacto2("Carlos", "674767867");
    for (int i = 0; i < cl.length; i++) {
      System.out.println(cl[i].nome() + ": " + cl[i].telefone() + "; " + cl[i].email());
    }
    
  }
}

