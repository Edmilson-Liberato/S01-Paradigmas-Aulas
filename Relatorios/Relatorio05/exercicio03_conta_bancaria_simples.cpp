#include <iostream>
using namespace std;

int main()
{
    // Declaração de variaveis 
    double Saldo; 
    int opcao = 0; 
    double depositar; 
    double sacar;
    
    // Entrada de dados
    cout<<"Qual é seu saldo inicial?"<<endl; 
    cin >> Saldo; 
    
    // Menu com as opcoes 
    while (true)
    {
        cout << "\nDigite 1 para ver o saldo" << endl;
        cout << "Digite 2 para depositar" << endl;
        cout << "Digite 3 para sacar" << endl;
        cout << "Digite 4 para sair" << endl;
        
        cin >> opcao;
        
        switch (opcao)
        {
            case 1:
                cout << "Saldo atual: " << Saldo << endl; 
                break;

            case 2:
                cout << "Digite o valor que deseja depositar: ";
                cin >> depositar; 
                Saldo = Saldo + depositar; 
                break;

            case 3:
                cout << "Digite o valor que deseja sacar: ";
                cin >> sacar;

                if (sacar > Saldo)
                {
                    cout << "Saldo Insuficiente" << endl; 
                }
                else
                {
                    Saldo = Saldo - sacar; 
                }
                break;

            case 4:
                cout << "Saindo da conta..." << endl;
                return 0;

            default:
                cout << "Opcao invalida!" << endl;
        }
    }
}





