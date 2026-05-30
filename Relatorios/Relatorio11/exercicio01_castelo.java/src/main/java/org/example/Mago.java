package org.example;

public class Mago extends Personagem {

    public Mago(String nome, int id) {
        super(nome, id);
    }

    @Override
    public void apresentar() {

        System.out.println(
                "Eu sou o mago de fogo " +
                        getNome() +
                        " tenho " +
                        getId() +
                        " anos."
        );

        System.out.println(
                "Minha habilidade específica é explosion."
        );
    }
}