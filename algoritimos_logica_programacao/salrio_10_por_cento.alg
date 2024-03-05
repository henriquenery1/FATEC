Algoritmo "aumento_salario"

Var
   nome_usuario: caractere
   salario_atual, salario_aumentado: real

Inicio
   Escreva("Digite o nome do usuário: ")
   Leia(nome_usuario)

   Escreva("Digite o salário atual de ", nome_usuario, ": ")
   Leia(salario_atual)

   salario_aumentado <- salario_atual + (salario_atual * 0.1)

   Escreval("Nome do usuário: ", nome_usuario)
   Escreval("Salário atual: R$", salario_atual)
   Escreval("Salário com aumento de 10%: R$", salario_aumentado)
   
FimAlgoritmo
