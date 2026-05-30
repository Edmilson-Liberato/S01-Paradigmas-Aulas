package org.example;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        Mago howl = new Mago("Howl", 18);
        howl.apresentar();

        Divisao quarto =
                new Divisao("Quarto", "Dormir");

        Divisao laboratorio =
                new Divisao("Laboratorio", "Pesquisa");

        Divisao quadra =
                new Divisao("Arena", "Treinamento");

        ArrayList<Divisao> lista =
                new ArrayList<>();

        lista.add(quarto);
        lista.add(laboratorio);

        Castelo castelo = new Castelo(lista);

        castelo.adicionarDivisao(quadra);

        castelo.listarDivisoes();
    }
}