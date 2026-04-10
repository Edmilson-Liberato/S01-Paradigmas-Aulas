#include <iostream>
#include <string>
using namespace std;

//Classe base Pessoa
class Pessoa 
{
private:
    string nome; 
    int idade;   

public:
    //Construtor da classe Pessoa
    Pessoa(string n, int i) 
    {
        nome = n;
        idade = i;
    }

    //Acesso controlado
    string getNome() 
    {
        return nome;
    }

    int getIdade() 
    {
        return idade;
    }
};

//Classe Protagonista herdando de Pessoa
class Protagonista : public Pessoa 
{
private:
    int nivel; //Atributo exclusivo

public:
    //Construtor
    Protagonista(string n, int i, int nv) : Pessoa(n, i) 
    {
        nivel = nv;
    }

    //Getter
    int getNivel() 
    {
        return nivel;
    }
};

//Classe Personagem herdando de Pessoa
class Personagem : public Pessoa 
{
private:
    int rank; //Varia de 0 a 10

public:
    //Construtor
    Personagem(string n, int i, int r) : Pessoa(n, i) 
    {
        rank = r;
    }

    //Getter
    int getRank() 
    {
        return rank;
    }
};

int main() 
{
    //Criando objeto Protagonista
    Protagonista p1("Yuki", 17, 10);

    //Criando objeto Personagem
    Personagem p2("Iori", 18, 7);

    //Mostrando dados do protagonista
    cout << "Protagonista" << endl;
    cout << "Nome: " << p1.getNome() << endl;
    cout << "Idade: " << p1.getIdade() << endl;
    cout << "Nivel: " << p1.getNivel() << endl;

    // Exibindo dados do personagem
    cout << "\nPersonagem" << endl;
    cout << "Nome: " << p2.getNome() << endl;
    cout << "Idade: " << p2.getIdade() << endl;
    cout << "Rank: " << p2.getRank() << endl;

    return 0;
}
