use std::io;

// Funcao para imprimir os multiplos
fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    
    // Define o tamanho do for
    for i in limite_inferior..=limite_superior {
        
        // Verifica se i eh multiplo de numero
        if i % numero == 0 {
            println!("{} eh multiplo de {}", i, numero);
        }
    }
}

fn main() {
    let mut entrada = String::new();

    // Solicita o numero da tabuada
    println!("Digite o numero da tabuada:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let numero: i32 = entrada.trim().parse().expect("Numero invalido");

    // Solicita o limite inferior
    entrada.clear(); //limpa a string
    println!("Digite o limite inferior:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let limite_inferior: i32 = entrada.trim().parse().expect("Numero invalido");

    // Solicita o limite superior
    entrada.clear();//limpa a string
    println!("Digite o limite superior:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let limite_superior: i32 = entrada.trim().parse().expect("Numero invalido");

    // Chamando a funcao
    imprimir_multiplos(numero, limite_inferior, limite_superior);
}
