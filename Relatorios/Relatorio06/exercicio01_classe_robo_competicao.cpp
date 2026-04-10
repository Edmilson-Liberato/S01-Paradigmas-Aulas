#include <iostream> 
#include <string>   
using namespace std; 

//Classe Robo
class Robo 
{
private:
    // Atributos privados (encapsulamento)
    string modelo;        // Modelo do robo
    int versao;           // Versão do software
    float potenciaLaser;  // Dano causado no ataque
    int integridade;      // Vida do robô

public:
    // Construtor: inicializa os atributos ao criar o objeto
    Robo(string m, int v, float p, int i) 
    {
        modelo = m;           // Define o modelo
        versao = v;           // Define a versão
        potenciaLaser = p;    // Define a potência do laser
        integridade = i;      // Define a integridade inicial
    }

    // Metodo disparar: um robô ataca outro
    void disparar(Robo &alvo) 
    {
        // Mostra mensagem de ataque
        cout << modelo << " disparou em " << alvo.modelo << "!" << endl;

        // Diminui a integridade do alvo com base na potencia do laser
        alvo.integridade -= potenciaLaser;

        // Garante que a integridade não fique negativa
        if (alvo.integridade < 0) 
        {
            alvo.integridade = 0;
        }
    }

    //Mostra os status do robo 
    void mostrarStatus() 
    {
        cout << "\nStatus do Robo" << endl;
        cout << "Modelo: " << modelo << endl;              
        cout << "Versao: " << versao << endl;              
        cout << "Potencia do Laser: " << potenciaLaser << endl; 
        cout << "Integridade: " << integridade << endl;    
    }
};

int main() 
{
    //Criacao de dois objetos da classe Robo
    Robo R1("IG-88", 1, 30.5, 100); // Robô 1
    Robo R2("R2-D2", 2, 25.0, 100); // Robô 2

    //Mostra os status iniciais dos robos
    cout << "ANTES DO COMBATE" << endl;
    R1.mostrarStatus(); // Mostra dados do robô 1
    R2.mostrarStatus(); // Mostra dados do robô 2

    //Simulacao de ataque
    cout << "\nCOMBATE" << endl;
    R1.disparar(R2); 

    // Mostra o status apos o ataque
    cout << "\nDEPOIS DO COMBATE" << endl;
    R1.mostrarStatus(); 
    R2.mostrarStatus(); 

    return 0; 
}
