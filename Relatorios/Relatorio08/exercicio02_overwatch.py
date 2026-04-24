#Importa recursos para criar classes abstratas 
from abc import ABC, abstractmethod

#Classe base abstrata
class Heroi(ABC):

    #Construtor da classe Heroi
    def __init__(self, nome: str, funcao: str):
        self.nome = nome  #nome do herói
        self.funcao = funcao  #função (Tanque, Dano, etc.)

    # Método abstrato (obriga as subclasses a implementarem)
    @abstractmethod
    def usar_ultimate(self):
        pass  #não possui implementação aqui


#Classe Tanque que herda de Heroi
class Tanque(Heroi):

    #Construtor da classe Tanque
    def __init__(self, nome: str):
        super().__init__(nome, "Tanque")  #define automaticamente a função

    #Implementação do método obrigatório
    def usar_ultimate(self):
        print(f"{self.nome} usa sua ultimate defensiva e protege o time!")


#Classe Dano que herda de Heroi
class Dano(Heroi):

    #Construtor da classe Dano
    def __init__(self, nome: str):
        super().__init__(nome, "Dano")  #define automaticamente a função

    #Implementação do método obrigatório
    def usar_ultimate(self):
        print(f"{self.nome} usa sua ultimate ofensiva causando alto dano!")



def main():
    #Lista para armazenar os heróis
    herois = []

    #Adiciona instâncias de Tanque e Dano na lista
    herois.append(Tanque("Reinhardt"))
    herois.append(Dano("Tracer"))

    #Percorre a lista e chama o método usar_ultimate()
    for heroi in herois:
        heroi.usar_ultimate()


# Executa o programa
main()
