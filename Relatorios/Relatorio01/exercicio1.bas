'Declaracao de variaveis
Dim resultado As double
Dim Nota1 As double 
Dim Nota2 AS double
Dim Nota3 AS double
Dim Peso1 As Integer 
Dim Peso2 AS Integer
Dim Peso3 AS Integer

'Entrada de dados
print "Digite tres notas: "
Input Nota1, Nota2, Nota3

print "Digite os pesos: "
Input Peso1, Peso2, Peso3

'Calculo da media ponderada
resultado = (Nota1*Peso1 + Nota2*Peso2 + Nota3*Peso3)/(Peso1+Peso2+Peso3)

'Saida de dados e resultado
if resultado >= 70 then
  print "Aprovado direto"
else
  print "Reprovado direto "
end if

Sleep
