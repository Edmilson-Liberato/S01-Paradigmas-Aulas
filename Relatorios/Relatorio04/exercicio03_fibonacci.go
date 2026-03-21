//Criei uma funcao Fibonacci inciando em 0 e 1. Depois, entre com valor que recebera as sequencias

package main
import "fmt"

// Função que gera a sequência de Fibonacci
func fibonacci(numero int) {
	inicial1 := 0 //recebe o valor começando em 0
	inicial2 := 1 //recebe o valor começando em 1

	//Esrutura de repeticao até o valor informado
	for i := 0; i < numero; i++ {
		fmt.Print(inicial1, " ")

		proximo := inicial1 + inicial2
		inicial1 = inicial2
		inicial2 = proximo
	}
}

func main() {
	
	var numero int //Armazena o valor fornecido
  
  //Entrada de daodos
	fmt.Print("Quantos numeros da sequencia Fibonacci voce quer? ")
	fmt.Scanln(&numero)
  
  //Chamando a funcao
	fibonacci(numero)
}
