using System;
using System.Collections.Generic;

//Classe Reliquia
class ReliquiaMagica
{
    public string NomeItem { get; set; } //Propriedade

    public ReliquiaMagica(string nome)
    {
        NomeItem = nome; //Define nome
    }
}

//Classe Bau (composicao)
class BauDeReliquias
{
    private List<ReliquiaMagica> itens = new List<ReliquiaMagica>(); //Lista interna

    public void GuardarItem(ReliquiaMagica item)
    {
        itens.Add(item); //Adiciona item ao bau
    }
}

//Classe Item de Acampamento
class ItemDeAcampamento
{
    public string Nome { get; set; } //Nome do item

    public ItemDeAcampamento(string nome)
    {
        Nome = nome; //Define nome
    }
}

//Classe Maga
class Maga
{
    public string Nome; //Nome da maga
    public BauDeReliquias Bau; //Composicao
    public List<ItemDeAcampamento> Itens; //Agregacao

    public Maga(string nome, List<ItemDeAcampamento> itens)
    {
        Nome = nome; //Define nome
        Bau = new BauDeReliquias(); //Instancia bau (composicao)
        Itens = itens; //Recebe lista externa (agregacao)
    }
}

class Program
{
    static void Main()
    {
        //Lista de itens de acampamento
        List<ItemDeAcampamento> lista = new List<ItemDeAcampamento>();
        lista.Add(new ItemDeAcampamento("Saco de Dormir")); //Item 1
        lista.Add(new ItemDeAcampamento("Pote de Cozinha")); //Item 2

        //Criando maga
        Maga frieren = new Maga("Frieren", lista);

        //Adicionando reliquias
        frieren.Bau.GuardarItem(new ReliquiaMagica("Anel de Prata"));
        frieren.Bau.GuardarItem(new ReliquiaMagica("Grimório Antigo"));

        //Exibindo itens de acampamento
        foreach (ItemDeAcampamento item in frieren.Itens)
        {
            Console.WriteLine(item.Nome); //Mostra nome
        }
    }
}
