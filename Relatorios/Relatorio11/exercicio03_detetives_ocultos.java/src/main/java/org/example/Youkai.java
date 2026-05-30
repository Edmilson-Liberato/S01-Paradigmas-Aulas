package org.example;

public class Youkai extends Entidade implements Rastreavel{
    private Poder poder;

    public Youkai(String nome, String nomePoder, int intensidade) {
        super(nome);

        poder = new Poder(nomePoder, intensidade);
    }

    @Override
    public String obterCoordenadas() {
        return "Aokigahara X:35 Y:138";
    }
}
