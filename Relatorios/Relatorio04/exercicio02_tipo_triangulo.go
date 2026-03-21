//Entre com 3 valores para um triangulo e verifique se é equilátero, isósceles ou escaleno

package main
import "fmt"

func main() {
  //Declaracao de variaveis
  var ladoA, ladoB, ladoC int
  
  //Entrada de dados
  fmt.Print("Digite um valor para o ladoA do triangulo: ")
  fmt.Scanln(&ladoA)
  fmt.Print("\nDigite um valor para o ladoB do triangulo: ")
  fmt.Scanln(&ladoB)
  fmt.Print("\nDigite um valor para o ladoc do triangulo: ")
  fmt.Scanln(&ladoC)
  
  //Verificando as condicoes e mostrando o tipo de triangulo
  switch {
    case ladoA == ladoB && ladoB == ladoC:
		fmt.Println("\nTriangulo equilatero")
  	case ladoA == ladoB || ladoA == ladoC || ladoB == ladoC:
		fmt.Println("\nTriangulo isosceles")
	  default:
		fmt.Println("\nTriangulo escaleno")
	}
}
