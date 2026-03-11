--Entre com vários valores de N em uma tabela e salve os valores impares em uma tabela nova

-- Declaração das tabelas
local tabela1 = {}
local tabela2 = {}

-- Entrada de dados
print("Digite numeros (0 para parar):")

-- Adicionando N na tabela1
while true do
  local N = tonumber(io.read())

  if N == 0 then
    break
  end

  table.insert(tabela1, N)
end

-- Procurando numeros impares e salvando na tabela2
for i = 1, #tabela1 do
  if tabela1[i] % 2 ~= 0 then
    local impar = tabela1[i]
    table.insert(tabela2, impar)
  end
end

-- Saida de dados
print("Tabela com os numeros impares:")
for i = 1, #tabela2 do
  print(tabela2[i])
end
