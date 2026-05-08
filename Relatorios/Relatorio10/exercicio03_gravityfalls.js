// COMPOSIÇÃO
//Classe 
class Criatura {
    constructor(nome, perigo) {
        this.nome = nome;
        this.perigo = perigo;
    }
}

class Diario {
    constructor() {
        this.criaturas = [];
    }

    registrarCriatura(criatura) {
        this.criaturas.push(criatura);

        console.log(
            `[REGISTRO] Criatura ${criatura.nome} adicionada ao Diário 3.`
        );
    }

    listarCriaturas() {
        console.log('\nCRIATURAS REGISTRADAS');

        //forEach percorre todas as criaturas
        this.criaturas.forEach(criatura => {
            console.log(
                `- ${criatura.nome} | Nível de perigo: ${criatura.perigo}`
            );
        });
    }
}


//AGREGAÇÃO

class Personagem {
    constructor(nome) {
        this.nome = nome;
    }
}

class CabanaMisterio {
    constructor(personagens = []) {
        this.personagens = personagens;
    }

    listarFuncionarios() {
        console.log('\nFUNCIONÁRIOS DA CABANA DO MISTÉRIO');

        //Percorre todos os personagens
        this.personagens.forEach(personagem => {
            console.log(`- ${personagem.nome}`);
        });
    }
}


//MAIN

//Criação do diário
const diario3 = new Diario();

//Criação das criaturas
const gnomos = new Criatura('Gnomos', 'Médio');
const shapeshifter = new Criatura('Shapeshifter', 'Alto');
const billCipher = new Criatura('Bill Cipher', 'Extremo');

//Registrando criaturas no diário
diario3.registrarCriatura(gnomos);
diario3.registrarCriatura(shapeshifter);
diario3.registrarCriatura(billCipher);

//Exibindo criaturas registradas
diario3.listarCriaturas();


//Criação dos personagens
const stan = new Personagem('Grunkle Stan');
const mabel = new Personagem('Mabel Pines');
const soos = new Personagem('Soos Ramirez');

//Agregação dos personagens na cabana
const cabana = new CabanaMisterio([
    stan,
    mabel,
    soos
]);

//listando funcionários
cabana.listarFuncionarios();
