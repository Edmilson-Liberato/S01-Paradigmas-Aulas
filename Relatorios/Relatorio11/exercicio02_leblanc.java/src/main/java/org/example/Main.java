package org.example;

public class Main {

    public static void main(String[] args) {

        Cafe opcao1 = new Cafe("Cafe curto", 4.0);
        Cafe opcao2 = new Cafe("Cafe Longo", 8.0);

        CafeGourmet opcao3 = new CafeGourmet(
                "Capuccino com canela",
                10.0,
                2.0
        );

        CafeteriaLeblanc cafeteria = new CafeteriaLeblanc();

        cafeteria.adicionarCafe(opcao1);
        cafeteria.adicionarCafe(opcao2);
        cafeteria.adicionarCafe(opcao3);

        cafeteria.abrirCafeteria();
    }
}
