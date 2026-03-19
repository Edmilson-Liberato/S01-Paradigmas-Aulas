use std::io;

// Funcao para calcular a media
fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 
{
    
    // calculo da NPT
    let NPT = (nota1+nota2)/2.0;
    
    //calculando a media poderada
    let media_final = (NPT * 0.7) + (nota3 * 0.3);
    
    //Verificando se foi aprovado ou reprovado
    if NPT >= 60.0 && nota3 >=60.0
    {
      println!("Media final: {:.2}", media_final);
      println!("Voce foi aprovado!");
    }
    else
    {
      println!("Media final: {:.2}", media_final);
      println!("Voce foi reprovado!");
    }
    // Retorna a media
    media_final
}

fn main() {
    let mut entrada = String::new();

    // Solicita a nota 1
    println!("Digite a nota da NP1:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let nota1: f64 = entrada.trim().parse().expect("Numero invalido");

    // Solicita a nota 2
    entrada.clear(); //limpa a string
    println!("Digite a nota da NP2:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let nota2: f64 = entrada.trim().parse().expect("Numero invalido");

    // Solicita a nota 3
    entrada.clear();//limpa a string
    println!("Digite a nota da NPL:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let nota3: f64 = entrada.trim().parse().expect("Numero invalido");

    // Chamando a funcao
    calcular_media(nota1, nota2, nota3);
}
