//Crie uma funcao para verificar se o nome possui 8 caracteres. A funcao deve receber uma string e retonrar dois valoes: um bool e uma string 

package main
import ("fmt")

//Funcao que verifica o nome e quantidade de caracteres
func ValidarUsuario(nome string) (bool, string) {
	if len(nome) >= 8 { //Verifica se o nome tem a quantidade correta de caracteres
		return true, "\nUsuario criado com sucesso!"
	} else { 
		return false, "\nErro: O nome de usuario e muito curto"
	}
}

func main() {
  //Declaracao de variaveis
	var nome string
	var valido bool
	var mensagem string

	// Loop até que o nome seja valido
	for {
	  //Entrada de dados
		fmt.Print("Digite seu nome: ")
		fmt.Scanln(&nome)

		valido, mensagem = ValidarUsuario(nome)

		fmt.Println(mensagem)

		if valido {
			break //Nome valido encerra o Loop
		}
	}
}
