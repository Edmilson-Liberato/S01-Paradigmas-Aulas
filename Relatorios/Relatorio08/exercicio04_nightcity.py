#Importa recursos para criar "interface" em Python
from abc import ABC, abstractmethod


#interface (classe abstrata)
class Cibernetico(ABC):

    # Método abstrato (obriga as classes filhas a implementarem)
    @abstractmethod
    def realizar_hack(self):
        pass  #sem implementação


#Classe de composição (Implante)
class Implante:

    #Construtor do implante
    def __init__(self, custo: float, funcao: str):
        self.custo = custo  
        self.funcao = funcao  


#Classe NetRunner que implementa a interface
class NetRunner(Cibernetico):

    #Construtor do NetRunner
    def __init__(self, nome: str):
        self.nome = nome  

       
        #O NetRunner cria seu próprio implante
        self.implante = Implante(5000, "Hack Neural")


    #Implementação obrigatória do método abstrato
    def realizar_hack(self):
        print(f"{self.nome} está hackeando usando {self.implante.funcao}!")


#Classe Faccao (Agregação)
class Faccao:

    #Construtor da facção
    def __init__(self, membros: list):
       
        #Recebe objetos já criados 
        self.membros = membros #lista de Ciberneticos


    #Método que manda todos executarem hack
    def executar_hacks(self):
        print("Facção iniciando ataques cibernéticos...\n")

        #Percorre todos os membros agregados
        for membro in self.membros:
            membro.realizar_hack()  # polimorfismo


#MAIN

#Criação de NetRunners 
n1 = NetRunner("V")
n2 = NetRunner("T-Bug")
n3 = NetRunner("Lucy")

#Lista de membros (
membros = [n1, n2, n3]

#Criação da facção com os membros
faccao = Faccao(membros)

#Executa os hacks de todos os membros
faccao.executar_hacks()
