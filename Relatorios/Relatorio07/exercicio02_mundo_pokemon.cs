using System;
using System.Collections.Generic;

//Classe base
class CriaturaPokemon
{
    public string Especie; //Atributo publico

    //Metodo virtual
    public virtual void ExecutarMovimento()
    {
        Console.WriteLine(Especie + " realiza um ataque genérico."); //Mensagem padrao
    }
}

//Classe TipoFogo herdando
class TipoFogo : CriaturaPokemon
{
    //Override do metodo
    public override void ExecutarMovimento()
    {
        Console.WriteLine(Especie + " lanca uma rajada de chamas!"); //Ataque fogo
    }
}

//Classe TipoAgua herdando
class TipoAgua : CriaturaPokemon
{
    //Override do metodo
    public override void ExecutarMovimento()
    {
        Console.WriteLine(Especie + " dispara uma bolha de agua!"); //Ataque agua
    }
}

class Program
{
    static void Main()
    {
        //Lista da classe mae
        List<CriaturaPokemon> lista = new List<CriaturaPokemon>();

        //Criando objetos
        TipoFogo p1 = new TipoFogo(); //Instancia fogo
        p1.Especie = "Scorbunny"; //Define especie

        TipoAgua p2 = new TipoAgua(); //Instancia agua
        p2.Especie = "Greninja"; //Define especie

        //Adicionando na lista
        lista.Add(p1); //Adiciona fogo
        lista.Add(p2); //Adiciona agua

        //Loop polimorfico
        foreach (CriaturaPokemon p in lista)
        {
            p.ExecutarMovimento(); //Chama metodo 
        }
    }
}
