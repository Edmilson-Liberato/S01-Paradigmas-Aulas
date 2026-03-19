use std::io;

// Funcao que verifica se o numero e impar
fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    // Variaveis
    let mut escolha = String::new();
    let mut entrada = String::new();

    
    // Jogador 1 escolhe se é par ou impar
    println!("Jogador 1, escolha 'par' ou 'impar':");
    io::stdin().read_line(&mut escolha).expect("Erro");

    let escolha = escolha.trim(); 

    // Jogador 1 numero
    println!("Jogador 1, digite um numero:");
    io::stdin().read_line(&mut entrada).expect("Erro");
    let jogador1: i32 = entrada.trim().parse().expect("Numero invalido");

    // -------------------------------
    // Jogador 2 numero
    entrada.clear();
    println!("Jogador 2, digite um numero:");
    io::stdin().read_line(&mut entrada).expect("Erro");
    let jogador2: i32 = entrada.trim().parse().expect("Numero invalido");

   
    // Calculo da soma
    let soma = jogador1 + jogador2;

    //chama a funcao e verifica se e impar
    let resultado_impar = eh_impar(soma);

    println!("\nEscolha do jogador 1: {}", escolha);
    
    // Resultado e vencedor
    println!("Soma dos numeros: {}", soma);

    if (resultado_impar && escolha == "impar") || (!resultado_impar && escolha == "par") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}
