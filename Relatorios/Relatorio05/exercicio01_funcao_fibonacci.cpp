#include <iostream>
using namespace std;

// Funcao Fibonacci
int fibonacci(int n) 
{
    if (n == 0) 
    {
        return 0; 
    }
    else if (n == 1)
    {
        return 1; 
    }
    else
    {
        return fibonacci(n-1) + fibonacci(n-2);
    }
}

int main() 
{
    // Declaração de variáveis 
    int n; 
    int resultado; 
    
    // Entrada de dados
    cin >> n;
    
    // Chamando a função 
    resultado = fibonacci(n); 

    // Saída de dados e resultado
    cout << resultado << endl;

    return 0;
}
