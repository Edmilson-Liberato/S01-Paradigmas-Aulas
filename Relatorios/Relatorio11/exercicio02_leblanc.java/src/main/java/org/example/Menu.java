package org.example;

import java.util.ArrayList;

public class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void exibirMenu() {

        System.out.println("MENU");

        for (Cafe cafe : cafes) {
            System.out.println(cafe.getNome() + " - R$ " + cafe.calcularPrecoFinal());
        }
    }
}
