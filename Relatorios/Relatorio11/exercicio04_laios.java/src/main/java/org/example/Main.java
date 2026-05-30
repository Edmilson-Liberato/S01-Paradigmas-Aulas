package org.example;

import java.util.ArrayList;
//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {


        Lagosta lagosta = new Lagosta("Lagosta");

        Cogumelo cogumelo = new Cogumelo("Cogumelo");

        Prato prato1 = new Prato(
                "Lagosta cozida com ervas",
                lagosta
        );

        Prato prato2 = new Prato(
                "Cogumelo assado com sal",
                cogumelo
        );


        prato1.servir();
        prato2.servir();

        ArrayList<Prato> cardapio = new ArrayList<>();

        cardapio.add(prato1);
        cardapio.add(prato2);


        System.out.println("\nCARDÁPIO DA EXPEDIÇÃO");

        for (Prato prato : cardapio) {
            prato.servir();
        }
    }
}