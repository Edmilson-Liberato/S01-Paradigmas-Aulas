#Classe que representa qualquer personagem do jogo
class Personagem:

    #Metodo construtor (inicializa os atributos do objeto)
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida  #atributo privado que armazena a vida
        self._resistencia = resistencia  #atributo privado de resistencia

    #Getter da vida (permite acessar a vida de forma controlada)
    @property
    def vida(self):
        return self._vida  #retorna o valor atual da vida

    #Setter da vida (CORRIGIDO: usa @vida.setter)
    @vida.setter
    def vida(self, valor):
        if valor < 0:  #evita vida negativa
            self._vida = 0  #se for negativo, recebe 0
        else:
            self._vida = valor  #caso contrario, atualiza normalmente

    #Getter da resistencia
    @property
    def resistencia(self):
        return self._resistencia  #retorna a resistencia

    #Setter da resistencia (CORRIGIDO: usa @resistencia.setter)
    @resistencia.setter
    def resistencia(self, valor):
        if valor < 0:  #evita valores negativos
            self._resistencia = 0  #ajusta para 0 se negativo
        else:
            self._resistencia = valor  #atualiza normalmente

    #Metodo que retorna uma representacao em texto do objeto
    def __str__(self):
        return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência"


#Classe filha que herda de Personagem
class Cavaleiro(Personagem):

    #Construtor do Cavaleiro
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        super().__init__(vida, resistencia)  #chama o construtor da classe base
        self.armadura_pesada = armadura_pesada  #atributo exclusivo do Cavaleiro

    #Representacao em texto do Cavaleiro
    def __str__(self):
        base = super().__str__()  #pega a string da classe Personagem
        #adiciona informacaoo da armadura pesada
        return f"{base} | Armadura pesada: {'Sim' if self.armadura_pesada else 'Não'}"

#Teste do codigo
if __name__ == "__main__":
    p1 = Personagem(100, 50)
    c1 = Cavaleiro(120, 80, True)

    print(p1)
    print(c1)

    c1.vida = -10
    print(c1)
