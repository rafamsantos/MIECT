package Aula10.Ex1;

import java.util.HashMap;

public class ex1 {
    public static void main(String[] args) {
        HashMap<String, String> colors = new HashMap<String , String>();
        colors.put("branco", "que tem a cor da neve");
        colors.put("azul", "que tem a cor do ceu");
        colors.put("amarelo", "que tem a cor do sol");
        colors.remove("branco", "que tem a cor da neve");
        colors.replace("amarelo", "que tem a cor do sol", "que tem a cor do fogo");
        colors.toString();
    }
}
