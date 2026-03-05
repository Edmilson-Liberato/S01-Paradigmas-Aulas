'Declaracao de variaveis
Dim Acesso As Integer = 1234
Dim Senha As Integer

'Entrada de dados
print "Digite a senha: "
Input Senha

'Enquanto Senha for diferente de Acesso
while Senha <> Acesso
  print "Senha incorreta. Tente novamente."
  Input Senha
wend

print "Acesso liberado!"
Sleep
