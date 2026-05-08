//CLASSE BASE
class Hunter {
    constructor(nome) {
        this.nome = nome;
    }

    //Método
    lutar() {
        return `${this.nome} entrou em combate!`;
    }
}


//HERANÇA E SOBRESCRITA
class Gon extends Hunter {
    constructor(nome) {
        super(nome);
    }
    lutar() {
        return `${this.nome} usa o poderoso Jajanken! `;
    }
}

class Killua extends Hunter {
    constructor(nome) {
        super(nome);
    }

    lutar() {
        return `${this.nome} ativa o Godspeed e desaparece em alta velocidade! `;
    }
}

class Kurapika extends Hunter {
    constructor(nome) {
        super(nome);
    }

    lutar() {
        return `${this.nome} invoca suas correntes para capturar o inimigo!️`;
    }
}


//AGREGAÇÃO

class TrupeFantasma {
    constructor(nome, membros = []) {
        this.nome = nome;
        this.membros = membros;
    }

    revelarMembros() {
        console.log(`\n${this.nome} REVELOU SEUS MEMBROS`);

        this.membros.forEach(membro => {
            console.log(`- ${membro}`);
        });
    }
}


//MAIN

//Criação dos hunters
const gon = new Gon('Gon Freecss');
const killua = new Killua('Killua Zoldyck');
const kurapika = new Kurapika('Kurapika');

//Polimorfismo
console.log(gon.lutar());
console.log(killua.lutar());
console.log(kurapika.lutar());


//Criação da trupe fantasma
const trupe = new TrupeFantasma('Trupe Fantasma', [
    'Chrollo Lucilfer',
    'Hisoka',
    'Feitan'
]);

//Exibindo membros
trupe.revelarMembros();
