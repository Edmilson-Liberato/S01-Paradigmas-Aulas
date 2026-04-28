# ------- Contexto: Stein Gate ---------
# O laboratório de Okabe registra experimentos enquanto ativa o Microondas-Telefone.


#1 COMPOSIÇÃO
#Classe interna ao sistema 
#Não pode existir fora do LabRegistro
class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada! O Microondas-Telefone está operando!"
  end
end


#2AGREGAÇÃO
#Relatorio pode existir independentemente do LabRegistro
class Relatorio
  attr_reader :nome_projeto, :autor

  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end
end


#3 CLASSE PRINCIPAL
class LabRegistro
  attr_accessor :registros

  def initialize
    #COMPOSIÇÃO
    @microondas = MicroondasTelefone.new

    #Array de relatórios
    @registros = []
  end

  def adicionar_registro(nome_projeto, autor)
    #i.ativa o microondas
    @microondas.ativar

    #ii.cria e adiciona relatório
    novo_relatorio = Relatorio.new(nome_projeto, autor)
    @registros << novo_relatorio

    puts "Registro adicionado: #{nome_projeto} por #{autor}"
  end

  def listar_experimentos
    puts "\n--- Experimentos Registrados ---"

    @registros.each do |r|
      puts "Projeto: #{r.nome_projeto} | Autor: #{r.autor}"
    end
  end
end


#--- MAIN ---
lab = LabRegistro.new

lab.adicionar_registro("KRR", "Okabe Rintaro")
lab.adicionar_registro("CERN Hack", "Daru")
lab.adicionar_registro("PhoneWave Test", "Kurisu")

lab.listar_experimentos
