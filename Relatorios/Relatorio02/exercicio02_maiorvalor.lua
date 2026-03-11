--Entre com vários valores de N e mostre o maior valor 

 --Função maior
function Maiornumero(Maior, tabela)
  for i = 1, #tabela do
    if Maior < tabela[i] then
      Maior = tabela[i]
    end
  end
  return Maior
end

---- Declaração das variaveis tabela e Maior
local tabela = {}
local Maior = 0

print("Digite numeros (0 para parar):")

-- Adicionando N na tabela
while true do
  local N = tonumber(io.read())
  
  if N == 0 then
    break
  end
  
  table.insert(tabela, N)
end

-- Mostra os números que estão na tabela
print("Numeros inseridos:")
for i = 1, #tabela do
  print(tabela[i])
end

-- Chamando a função
local resultado = Maiornumero(Maior, tabela)
-- Mostra o resultado
print("O maior valor e: "..resultado)
