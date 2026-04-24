#Classe que representa uma arma corpo a corpo (Composição)
class ArmaCorpoACorpo:

    #Construtor da arma
    def __init__(self, nome: str):
        self.nome = nome  


# Classe que representa um membro dos Phantom Thieves (Agregação)
class PhantomThieves:

    # Construtor da classe
    def __init__(self, nome: str, arma: str):
        self.nome = nome
        self.arma = arma  


#Classe principal 
class Joker:

    #Construtor da classe Joker
    def __init__(self, equipe: list):
       
        self.arma = ArmaCorpoACorpo("Faca")  #arma exclusiva do Joker

        self.equipe = equipe  #lista de PhantomThieves


    #Método que mostra os membros da equipe
    def mostrar_equipe(self):
        print("Equipe de Joker:")
        
        # Percorre a lista de membros
        for membro in self.equipe:
            # Imprime os dados de cada membro
            print(f"Nome: {membro.nome} | Arma: {membro.arma}")


#MAIN
#Criação dos membros da equipe 
m1 = PhantomThieves("Ryuji", "Bastão")
m2 = PhantomThieves("Ann", "Chicote")
m3 = PhantomThieves("Yusuke", "Katana")

#Lista com os membros 
equipe = [m1, m2, m3]

#Criação do Joker com a equipe 
joker = Joker(equipe)

#Exibe os membros da equipe
joker.mostrar_equipe()
