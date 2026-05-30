package org.example;

public class Main {

    public static void main(String[] args) {

        // Criando aliens
        Alien alien1 = new Alien(
                "Frieza",
                "Rajada de Energia",
                100
        );

        Alien alien2 = new Alien(
                "Boros",
                "Explosão Etelar",
                95
        );

        // Criando youkais
        Youkai youkai1 = new Youkai(
                "Kurama",
                "Chicote de Rosa",
                85
        );

        Youkai youkai2 = new Youkai(
                "Hiei",
                "Chama Negra do Dragao",
                95
        );

        RegistroOculto registro = new RegistroOculto();

        registro.registrarEntidade(alien1);
        registro.registrarEntidade(alien2);
        registro.registrarEntidade(youkai1);
        registro.registrarEntidade(youkai2);

        registro.registrarEntidade(alien1);

        registro.listarEntidades();
    }
}
