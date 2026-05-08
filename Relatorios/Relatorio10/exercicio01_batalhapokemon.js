//CLASSE BASE
class Pokemon {
    //ENCAPSULAMENTO
    #vida;

    constructor(nome, tipo, vida) {
        this.nome = nome;
        this.tipo = tipo;
        this.#vida = vida;
    }

    //GETTER
    get vida() {
        return this.#vida;
    }

    //MÉTODO 
    atacar() {
        return `${this.nome} realizou um ataque básico!`;
    }

    //ENCAPSULAMENTO
    receber_dano(dano) {
        this.#vida -= dano;

        
        if (this.#vida < 0) {
            this.#vida = 0;
        }

        console.log(`${this.nome} recebeu ${dano} de dano!`);
    }
}


//HERANÇA

class Pikachu extends Pokemon {
    constructor(nome) {
        
        super(nome, 'Elétrico', 100);
    }

   
    atacar() {
        return `${this.nome} usou Choque do Trovão! `;
    }
}

class Charizard extends Pokemon {
    constructor(nome) {
        super(nome, 'Fogo', 150);
    }

   
    atacar() {
        return `${this.nome} usou Lança-Chamas! `;
    }
}

//MAIN 
//criação dos pokémons
const pikachu = new Pikachu('Pikachu');
const charizard = new Charizard('Charizard');

//POLIMORFISMO

console.log(pikachu.atacar());
console.log(charizard.atacar());

//Aplicando dano
charizard.receber_dano(40);

//Asando getter para acessar a vida
console.log(`Vida restante de ${charizard.nome}: ${charizard.vida}`);
