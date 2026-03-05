'Declaracao de variaveis
Dim distancia As double 
Dim litros As double
Dim consumo As double

'Entrada de dados
print "Digite a distancia percorrida (em quilometros)"
Input distancia
print "Digite a quantidade de combustivel gasta (em litros) "
Input litros

'Calculo de consumo
consumo = distancia / litros

'Saida de dados
print "Valor do consumo medio calculado: ";consumo; " km/l"

Sleep
