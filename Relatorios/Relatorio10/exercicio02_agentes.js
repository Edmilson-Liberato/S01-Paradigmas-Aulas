// CLASSES BASE E INTERFACES 

// Classe base que funciona como contrato/interface
class Habilidade {
    constructor(nome) {
        this.nome = nome;
    }

    //Método 
    usar() {
        throw new Error(`A habilidade ${this.nome} deve implementar o método usar()`);
    }
}

//HERANÇA E SOBRESCRITA
class Smoke extends Habilidade {
    constructor() {
        super('Smoke');
    }

    usar() {
        return 'Lançando fumaça para bloquear a visão dos inimigos!';
    }
}

class Flash extends Habilidade {
    constructor() {
        super('Flash');
    }

    usar() {
        return 'Utilizando flash para cegar os adversários!';
    }
}

class Dash extends Habilidade {
    constructor() {
        super('Dash');
    }

    usar() {
        return 'Avançando rapidamente pelo mapa!';
    }
}

class Armadilha extends Habilidade {
    constructor() {
        super('Armadilha');
    }

    usar() {
        return 'Posicionando armadilhas para proteger a área!';
    }
}


//COMPOSIÇÃO
class Agente {
    constructor(nome, funcao, habilidade) {
        this.nome = nome;
        this.funcao = funcao;

        this.habilidade = habilidade;
    }

    entrarEmCombate() {
        console.log(
            `${this.nome} (${this.funcao}) entrou em combate! | ${this.habilidade.usar()}`
        );
    }
}


//AGREGAÇÃO E COLLECTIONS
class Time {
    constructor(nome, agentes = []) {
        this.nome = nome;
        this.agentes = agentes;
    }

    iniciarPartida() {
        console.log(`\n${this.nome} INICIOU A PARTIDA!`);

        //Percorre todos os agentes
        this.agentes.forEach(agente => {
            agente.entrarEmCombate();
        });
    }

    listarControladores() {
        //Retorna apenas agentes com habilidade Smoke
        return this.agentes.filter(
            agente => agente.habilidade instanceof Smoke
        );
    }
}


//MAIN

//Criação das habilidades
const smoke = new Smoke();
const flash = new Flash();
const dash = new Dash();
const armadilha = new Armadilha();

//Criação dos agentes
const omen = new Agente('Omen', 'Controlador', smoke);
const skye = new Agente('Skye', 'Iniciador', flash);
const jett = new Agente('Jett', 'Duelista', dash);
const cypher = new Agente('Cypher', 'Sentinela', armadilha);

//Agregação no time
const valorantTeam = new Time('Valorant Champions', [
    omen,
    skye,
    jett,
    cypher
]);

//Iniciando partida
valorantTeam.iniciarPartida();

//listando controladores
console.log('\nControladores Encontrados:');

valorantTeam.listarControladores().forEach(controlador => {
    console.log(`- ${controlador.nome}`);
});
