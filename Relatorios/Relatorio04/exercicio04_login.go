//Crie uma funcao para verificar se o usuario e senha são admin. Se divergente, repete até que seja valido

package main
import ("fmt")

//Funcao que verifica se o usuario e senha são iguais a admin
func VerificarLogin(usuario,senha string) bool {
	if usuario == "admin" && senha == "admin" {
		return true
	} else { 
		return false
	}
}

func main() {
  //Declaracao de variaveis
	var usuario string
	var valido bool
	var senha string

	// Loop até que o Login esteja certo
	for {
	  //Entrada de dados
		fmt.Print("Digite o usuario: ")
		fmt.Scanln(&usuario)
		
		fmt.Print("\nDigite a senha: ")
		fmt.Scanln(&senha)

		valido = VerificarLogin(usuario, senha)
		
		//Saida de dados
		if valido { 
		  fmt.Println("\nLogin bem-sucedido!")
		  break
		
		}else {
		  fmt.Println("\nUsuario ou senha incorretos. Tente novamente.")
		}

	}
}
