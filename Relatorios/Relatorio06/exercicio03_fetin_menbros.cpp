#include <iostream>
#include <string>
using namespace std;

//Classe base
class MembroInatel 
{
protected:
    string nomeCompleto; // acessivel pelas classes filhas

public:
    //Construtor
    MembroInatel(string nome) 
    {
        nomeCompleto = nome;
    }

    //Metodo virtual
    virtual void identificar() 
    {
        cout << "Sou um membro da comunidade Inatel: "
        << nomeCompleto << "." << endl;
    }
};

//Classe Coordenador (herda de MembroInatel)
class Coordenador : public MembroInatel 
{
private:
    string departamento;

public:
    //Construtor
    Coordenador(string nome, string dep)
        : MembroInatel(nome) 
    {
        departamento = dep;
    }

    // Sobrescrita do metodo identificar
    void identificar() override 
    {
        cout << "Sou o coordenador " << nomeCompleto
             << " do departamento de " << departamento << "." << endl;
    }
};

//Classe Pesquisador (herda de MembroInatel)
class Pesquisador : public MembroInatel 
{
private:
    string laboratorio;

public:
    //Construtor
    Pesquisador(string nome, string lab)
        : MembroInatel(nome) 
    {
        laboratorio = lab;
    }

    // Sobrescrita do metodo identificar
    void identificar() override 
    {
        cout << "Sou o pesquisador " << nomeCompleto 
        << " do laboratorio " << laboratorio << "." << endl;
    }
};

int main() 
{
    //Criando objetos
    Coordenador c1("Jean Silva", "Computacao");
    Pesquisador p1("Ana Souza", "6G");

    cout << "Identificacao" << endl;

    //Chamando metodos
    c1.identificar(); //Usa versao do Coordenador
    p1.identificar(); //Usa versao do Pesquisador

    return 0;
}
