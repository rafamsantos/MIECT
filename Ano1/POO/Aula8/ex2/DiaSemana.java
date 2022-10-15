package Aula8.ex2;

public enum DiaSemana {
    Segunda(1),
    Terca(2),
    Quarta(3),
    Quinta(4),
    Sexta(5),
    Sabado(6),
    Domingo(7);

    private final int dia;

    DiaSemana(int n)
    {
        this.dia = n;

    }
    public int Dia() { return dia; }

    public static DiaSemana dNum(int n)
    {
        DiaSemana da = null;
        for(DiaSemana dia : DiaSemana.values())
        {
            if(dia.Dia() == n)
                return dia;
        }
        return da;

    }
    public static int rand()
    {
        int range = 6-0+1;
        int rand = (int)(Math.random() * range);
        return rand;
    }
}

