#------- Contexto: Orquestra ---------
#Um Maestro coordena uma pequena orquestra. Cada integra nt e possui uma técnica única
#Todos correspondem aos comandos para manter a harmonia


#CLASSE BASE 
#ABSTRAÇÃO
class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  #Método abstrato 
  #Obriga as subclasses a implementar
  def tocar_partitura(obra)
    raise NotImplementedError, "#{self.class} deve implementar tocar_partitura"
  end
end


#HERANÇA
class Pianista < Musico
  def tocar_partitura(obra)
    puts "#{nome} toca '#{obra}' no piano com extrema precisão"
  end
end


class Violinista < Musico
  def tocar_partitura(obra)
    puts "#{nome} executa '#{obra}' no violino com emoção"
  end
end


#CLASSE MAESTRO
class Maestro
  attr_accessor :musicos

  def initialize(musicos = [])
    @musicos = musicos
  end

  #Usa .each (polimorfismo em ação)
  #Chama o método
  def iniciar_concerto(obra)
    puts "\n--- Iniciando Concerto --- \n--- #{obra} ---"

    @musicos.each do |m|
      m.tocar_partitura(obra)
    end
  end

  #Usa .map (transformação de dados)
  #Retornar um novo array
  def ajustar_postura(estado)
    @musicos.map do |m|
      "#{m.nome} está em ritmo #{estado}!"
    end
  end
end


#--- MAIN ---

#Criando músicos
p1 = Pianista.new("Kosei Arima", "Piano")
v1 = Violinista.new("Kaori Miyazono", "Violino")

#Criando maestro com os músicos (agregação)
maestro = Maestro.new([p1, v1])

#Obra criada
obra = "Sinfonia da Primavera"

#Executando concerto
maestro.iniciar_concerto(obra)

#Ajuste de postura
puts "\n--- Ajuste de Postura ---"
status = maestro.ajustar_postura("Allegro")

#Exibindo resultado do map
status.each do |s|
  puts s
end
