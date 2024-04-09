// Faça um algoritmo que a partir de um salário informado pelo usuário
// obtenha como retorno o salário aumentado de 30%.

algoritmo "ex01"

var
   salario, salario_aumentado: real

inicio
   escreva("Digite o salário: ")
   leia(salario)

   salario_aumentado <- salario + (salario * 0.3)

   escreval()
   escreva("O salário com aumento de 30% é: ", salario_aumentado)

fimalgoritmo