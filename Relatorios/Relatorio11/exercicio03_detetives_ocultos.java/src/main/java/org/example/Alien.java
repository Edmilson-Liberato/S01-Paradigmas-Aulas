package org.example;

public class Alien extends Entidade implements Rastreavel{

    private Poder poder;

    public Alien(String nome, String nomePoder, int intensidade) {
        super(nome);

        // composição
        poder = new Poder(nomePoder, intensidade);
    }

    @Override
    public String obterCoordenadas() {
        return "Area51 X:3724804 Y:155800";
    }
}
