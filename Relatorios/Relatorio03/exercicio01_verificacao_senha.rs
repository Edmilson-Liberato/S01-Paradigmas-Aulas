// Funcao que verifica uma senha e retorna um booleano. A senha deve ter 10 digitios e 2 letras

use std::io; //Bilioteca para entrada de dados 

// Função que verifica a senha e requisitos 
fn verificar_senha(senha: &str) -> bool {
    let mut qtd_numeros = 0; //Contador de numeros da senha
    let mut tem_maiuscula = false; //Verifica se tem letra maiuscula 

    for c in senha.chars() 
    {
        if c.is_digit(10) //Verifia se é numero 
        {
            qtd_numeros += 1; // Se for numero, acrescenta no contador
        }
        if c.is_ascii_uppercase() //Verifia se é uma letra
        {
            tem_maiuscula = true; //Verifica se tem letra maiuscula
        }
    }

    // Verifica todas as condições: tamanho e quantidade de letras
    senha.len() >= 10 && qtd_numeros >= 2 && tem_maiuscula
}

fn main() {
    // Loop até que a senha seja valida 
    loop {
        let mut senha = String::new(); //Variavel que armazena a senha solicita

        println!("Digite a senha:"); //Solicita a senha

        io::stdin()
            .read_line(&mut senha) // Recebe a senha digitada
            .expect("Erro ao ler a senha"); //Segurança e ionforma erro, caso acontecça

        let senha = senha.trim(); // remove \n

        //chama a funcao para verificar se a senha é valida ou não 
        if verificar_senha(senha) {
            println!("A senha é válida, seja bem vindo!");
            break;
        } else {
            println!("Senha inválida. Tente novamente.\n");
        }
    }
}
