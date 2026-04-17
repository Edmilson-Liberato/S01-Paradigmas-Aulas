using System;
using System.Collections.Generic;

//Classe abstrata
abstract class AbominacaoCosmica
{
    public string Nome; //Nome da entidade

    //Metodo abstrato
    public abstract void Manifestar();
}

//Classe Shoggoth
class Shoggoth : AbominacaoCosmica
{
    public override void Manifestar()
    {
        Console.WriteLine(Nome + ": A massa de protoplasma se arrasta borbulhando."); //Manifestacao
    }
}

//Classe Caçador Alado
class CacadorAlado : AbominacaoCosmica
{
    public override void Manifestar()
    {
        Console.WriteLine(Nome + ": Bate asas membranosas e mergulha silenciosamente."); //Manifestacao
    }
}

class Program
{
    static void Main()
    {
        //Lista de abominacoes
        List<AbominacaoCosmica> lista = new List<AbominacaoCosmica>();

        //Criando objetos
        Shoggoth s = new Shoggoth();
        s.Nome = "Shoggoth";

        CacadorAlado c = new CacadorAlado();
        c.Nome = "Cacador Alado";

        //Adicionando na lista
        lista.Add(s);
        lista.Add(c);

        //Percorrendo lista
        foreach (AbominacaoCosmica a in lista)
        {
            a.Manifestar(); //Polimorfismo
        }
    }
}

