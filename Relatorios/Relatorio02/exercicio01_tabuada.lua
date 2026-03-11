--Tabuada: Multiplicando X por todos os numeros inteiros no intervalo de M e N 

--Entrada de dados
print("Digite um valor para M e N (considere M ≤ N), que determinarão o intervalo da tabuada.")
local M = tonumber(io.read())
local N = tonumber(io.read())
local inicio = M
local fim = N
print("Digite um valor para X para calcular a tabuada.")
local X = tonumber(io.read())
local valores = tonumber(io.read())

--Repete o calculo até os valores definidos de M e N
for i = inicio, fim do
    --Calculo do valor de X com a posição do intervalo
    valores = X*i
    --Saida de dados (Tabuada)
   
    print(X .. " x " .. i .. " = " .. valores)
end
