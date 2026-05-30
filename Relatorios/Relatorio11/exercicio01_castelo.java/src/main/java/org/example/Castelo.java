package org.example;

import java.util.ArrayList;

public class Castelo {

    ArrayList<Divisao> divisoes;

    public Castelo(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {

        System.out.println("\nDivisões do Castelo:");

        for (Divisao comodo : divisoes) {
            System.out.println(
                    "- " +
                            comodo.nome +
                            " : " +
                            comodo.funcao
            );
        }
    }
}