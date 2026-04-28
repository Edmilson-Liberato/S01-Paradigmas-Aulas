# ------- Contexto: Sherlock Holmes ---------
# Holmes precisa identificar rapidamente quem pode representar perigo
# entre as pessoas presentes na cena do crime.


#MÓDULO interface
module Localizavel
  def local_atual
    raise NotImplementedError, "#{self.class} deve implementar local_atual"
  end
end


#MÓDULO comportamento 
module Perigoso
  def exibir_ameaca
    puts "ALERTA: #{self.nome} pode representar perigo!"
  end
end


#CLASSE BASE
class Pessoa
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end


#HERANÇA e MÓDULO
class Testemunha < Pessoa
  include Localizavel

  def local_atual
    puts "#{nome} foi visto próximo à cena do crime."
  end
end


#HERANÇA e DOIS MÓDULOS
class Suspeito < Pessoa
  include Localizavel
  include Perigoso

  def local_atual
    puts "#{nome} está se escondendo em Baker Street."
  end
end


#--- MAIN ---

t1 = Testemunha.new("Sr. Watson")
t2 = Testemunha.new("Sra. Hudson")
s1 = Suspeito.new("James Moriarty")
s2 = Suspeito.new("Irene Adler")

pessoas = [t1, t2, s1, s2]

puts "\n--- Investigação em andamento ---"

#POLIMORFISMO
#Todos respondem ao local_atual
pessoas.each do |p|
  p.local_atual
end

puts "\n--- Identificando ameaças ---"

#INTROSPECÇÃO
#Verifica quem é perigoso
pessoas.each do |p|
  if p.respond_to?(:exibir_ameaca)
    p.exibir_ameaca
  end
end
