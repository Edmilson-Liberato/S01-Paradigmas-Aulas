# ------- Contexto: Afterlife ---------
#No bar Afterlife, drinks icônicos carregam histórias de lendas.
#Quanto maior a notoriedade, maior o valor da bebida.


#CLASSE BASE
#Define qualquer bebida do Afterlife
class BebidaAfterlife 
  attr_reader :nome, :custo_base
  
  #Construtor
  def initialize(nome, custo_base)
    @nome = nome
    @custo_base = custo_base
  end

  def preco_total
    @custo_base
  end

  #Representação elegante
  def to_string
    "Bebida: #{@nome} | Valor Final: $#{preco_total}"
  end
end


#HERANÇA
#DrinkIconico herda de BebidaAfterlife
class DrinkIconico < BebidaAfterlife

  #Atributo exclusivo
  attr_reader :nivel_notoriedade

  def initialize(nome, custo_base, nivel_notoriedade)
    super(nome, custo_base)
    @nivel_notoriedade = nivel_notoriedade
  end

  #POLIMORFISMO 
  #Sobrescrita para calcular o custo
  def preco_total
    @custo_base + (@nivel_notoriedade * 8)
  end

  #Representação elegante
  def to_string
    "Drink Icônico: #{@nome} | Notoriedade: #{@nivel_notoriedade} | Valor Final: $#{preco_total}"
  end
end


# --- MAIN ---
#Instanciando 3 drinks
drink1 = DrinkIconico.new("Neon Samurai", 50, 5)
drink2 = DrinkIconico.new("David Martinez", 40, 3)
drink3 = DrinkIconico.new("Rogue Spirit", 60, 7)

#Lista de drinks array
drinks = [drink1, drink2, drink3]

puts "\n--- Drinks do Afterlife ---"

#POLIMORFISMO EM AÇÃO
drinks.each do |d|
  puts d.to_string
end
