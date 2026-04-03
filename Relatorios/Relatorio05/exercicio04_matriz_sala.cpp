#include <iostream>
using namespace std;

int main()
{
    //Matriz e inicializacao com 0
    int sala[5][5] = {0};
    
    int opcao;
    bool executando = true;

    //Menu principal com as opcoes 
    while (executando)
    {
        cout << "\n--- MENU ---" << endl;
        cout << "1. Reservar Assento" << endl;
        cout << "2. Ver Mapa da Sala" << endl;
        cout << "3. Sair" << endl;
        cout << "Opcao: ";
        cin >> opcao;

        switch (opcao)
        {
            case 1:
            {
                int fileira, coluna; 
                cout << "Digite a fileira (0-4): ";
                cin >> fileira;
                cout << "Digite a coluna (0-4): ";
                cin >> coluna;

                // Verificaão de limites
                if (fileira < 0 || fileira > 4 || coluna < 0 || coluna > 4)
                {
                    cout << "Posicao invalida!" << endl;
                }
                else if (sala[fileira][coluna] == 0)
                {
                    sala[fileira][coluna] = 1;
                    cout << "Sucesso!" << endl;
                }
                else
                {
                    cout << "Erro: Assento ocupado!" << endl;
                }
                break;
            }

            case 2:
                cout << "\nMapa da Sala:\n";
                for (int i = 0; i < 5; i++)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        cout << "[" << sala[i][j] << "] ";
                    }
                    cout << endl;
                }
                break;

            case 3:
                executando = false;
                break;

            default:
                cout << "Opcao invalida!" << endl;
        }
    }

    //Relatorio final
    int ocupados = 0;
    int vazios = 0;

    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            if (sala[i][j] == 1)
                ocupados++;
            else
                vazios++;
        }
    }

    cout << "\n--- RELATORIO FINAL ---" << endl;
    cout << "Assentos ocupados: " << ocupados << endl;
    cout << "Assentos vazios: " << vazios << endl;

    return 0;
}
