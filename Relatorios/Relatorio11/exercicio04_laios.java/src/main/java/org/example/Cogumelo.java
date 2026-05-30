package org.example;

public class Cogumelo extends Monstro {
    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println(
                "Senshi prepara o cogumelo assado na fogueira com sal."
        );
    }
}
