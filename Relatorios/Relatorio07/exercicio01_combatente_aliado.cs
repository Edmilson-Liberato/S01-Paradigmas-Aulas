using System; //Importa funcionalidades basicas
using System.Collections.Generic; //Importa listas

//Classe CombatenteAliado
class CombatenteAliado
{
    private string nome; //Atributo privado para nome
    private string linhagem; //Atributo privado para raca
    private string patente; //Atributo privado para funcao

    //Construtor 
    public CombatenteAliado(string nome, string linhagem, string patente)
    {
        this.nome = nome; //Define o nome
        this.linhagem = linhagem; //Define a linhagem
        this.patente = patente; //Define a patente
    }

    //Metodo apresentar o combatente
    public void ApresentarUnidade()
    {
        Console.WriteLine("Nome: " + nome + ", Linhagem: " + linhagem + ", Patente: " + patente); //Mostra os dados
    }
}

class Program
{
    static void Main()
    {
        //Criando objetos
        CombatenteAliado c1 = new CombatenteAliado("Boromir", "Humano", "Capitão"); //Humano Capitao
        CombatenteAliado c2 = new CombatenteAliado("Gimli", "Anão", "Guerreiro"); //Anao Guerreiro
        CombatenteAliado c3 = new CombatenteAliado("Legolas", "Elfo", "Arqueiro"); //Outro a escolha

        //Chamndo metodo apresentar
        c1.ApresentarUnidade(); //Apresenta c1
        c2.ApresentarUnidade(); //Apresenta c2
        c3.ApresentarUnidade(); //Apresenta c3
    }
}
