package org.example;
import java.util.HashMap;
import java.util.Map;
public class RegistroOculto {

    private HashMap<String, Entidade> entidades;

    public RegistroOculto() {
        entidades = new HashMap<>();
    }

    public void registrarEntidade(Entidade entidade) {

        if (entidades.containsKey(entidade.getNome())) {

            System.out.println("A entidade " + entidade.getNome() + " já está no mapa!");

        } else {

            entidades.put(entidade.getNome(), entidade);

            System.out.println(entidade.getNome() + " adicionada!"
            );
        }
    }
    public void listarEntidades() {

        System.out.println("\nENTIDADES REGISTRADAS");

        for (Map.Entry<String, Entidade> item : entidades.entrySet()) {

            Entidade entidade = item.getValue();

            Rastreavel rastreavel = (Rastreavel) entidade;

            System.out.println("Nome: " + entidade.getNome());

            System.out.println("Coordenadas: " + rastreavel.obterCoordenadas());

            System.out.println();
        }
    }
}
