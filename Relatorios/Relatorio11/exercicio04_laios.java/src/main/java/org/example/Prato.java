package org.example;

public class Prato {

    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {

        this.nome = nome;
        this.monstro = monstro;

        tempero = new Tempero("Sal e Ervas", "2 colheres");
    }

    public void servir() {

        System.out.println("\nPrato: " + nome);
        monstro.virarPrato();


        System.out.println ("Tempero usado: " + tempero.nome + " - " + tempero.quantidade);
    }
}

