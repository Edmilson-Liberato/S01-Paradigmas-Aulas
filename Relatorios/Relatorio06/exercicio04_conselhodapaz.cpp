#include <iostream>
#include <string>
#include <vector>
using namespace std;

//Classe base
class MembroConselho 
{
protected:
    string nome;

public:
    //Construtor
    MembroConselho(string n) 
    {
        nome = n;
    }

    //Metodo virtual
    virtual void saudar() 
    {
        cout << "Um membro do conselho faz uma reverencia silenciosa." << endl;
    }

    //Destrutor virtual (boa pratica)
    virtual ~MembroConselho() {}
};

//Classe Anao
class Anao : public MembroConselho 
{
public:
    //Construtor
    Anao(string n) : MembroConselho(n) {}

    //Sobrescrita
    void saudar() override 
    {
        cout << "Pela forca da montanha, eu sou "
             << nome << " e honro nosso aco!" << endl;
    }
};

//Classe Orc
class Orc : public MembroConselho 
{
public:
    Orc(string n) : MembroConselho(n) {}

    void saudar() override 
    {
        cout << "Pelo sangue e gloria, eu sou "
             << nome << " e trago a forca de minha tribo!" << endl;
    }
};

//Classe Draconato
class Draconato : public MembroConselho 
{
public:
    Draconato(string n) : MembroConselho(n) {}

    void saudar() override 
    {
        cout << "Pelo sopro dos ancestrais, eu sou "
             << nome << " e falo em nome dos dragoes!" << endl;
    }
};

int main() 
{
    //Vetor de ponteiros da classe base
    vector<MembroConselho*> conselho;

    //Adicionando membros diferentes
    conselho.push_back(new Anao("Tolkien"));
    conselho.push_back(new Orc("Gorbag"));
    conselho.push_back(new Draconato("Scatha"));

    cout << "Conselho de Paz" << endl;

    // Percorrendo e chamando o método
    for (MembroConselho* m : conselho) 
    {
        m->saudar(); 
    }

    // Liberando memória
    for (MembroConselho* m : conselho) 
    {
        delete m;
    }

    return 0;
}
