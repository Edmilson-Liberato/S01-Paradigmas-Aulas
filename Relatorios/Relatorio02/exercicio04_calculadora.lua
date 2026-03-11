-- Entre com dois numeros e realize uma das funções: +, -, /, *


---Função calculadora
function calculadora(n1, n2, operacao)

  if operacao == "+" then
    return n1 + n2

  elseif operacao == "-" then
    return n1 - n2

  elseif operacao == "*" then
    return n1 * n2

  elseif operacao == "/" then
    return n1 / n2

  else
    return "Operacao invalida"
  end

end

--Entrada de dados
print("Digite o primeiro valor:")
local n1 = tonumber(io.read()) 
print("Digite o segundo valor:")
local n2 = tonumber(io.read())
print("Digite a operacao que deseja calcular:(+,-,/,*)")
local operacao = io.read()

--Chamando a Função
local resultado = calculadora(n1, n2, operacao)

-- Saida de dados e resultado
print(n1 .. " " .. operacao .. " " .. n2 .. " = " .. resultado)
