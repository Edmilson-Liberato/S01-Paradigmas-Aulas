#include <iostream>
using namespace std;

//Funcão que multiplica os valores armazenados no vetor 
float multiplicaArray(float arr[], int tamanho)
{
  float produto = 1; 
  for(int i = 0; i<tamanho; i++)
  {
      produto = produto*arr[i];
  }
  
  return produto; 
}

int main()
{
    //Declaracao de variaveis 
    float *arr = NULL; 
    int tamanho;
    
    //Entrada de dados
    cin>>tamanho; 
    
    //Alocando memoria no vetor
    arr = new float[tamanho];
    
    //Armazenando os valores no vetor
    for (int i = 0; i<tamanho; i++)
    {
        cin>>arr[i]; 
    }
    
    //Chamando a funcao
    float resultado = multiplicaArray(arr, tamanho);
    
    //Saida de dados e resultado 
    cout<<resultado<<endl; 
    
    // Liberando memoria
    delete[] arr;

    return 0; 
}
