// João recebeu seu salário de R$1200,00 e precisa pagar duas contas 
// (C1=R$200,00 e C2=R$120,00) que estão atrasadas. 
// Como as contas estão atrasadas, João terá de pagar multa de 2% sobre cada conta. 
// Faça um algoritmo que calcule e mostre quanto restará do salário do João

algoritmo "ex04"

var
   salario, conta1, conta2, total_contas, multa_conta1, multa_conta2, salario_restante: real

inicio
   salario <- 1200
   conta1 <- 200
   conta2 <- 120

   total_contas <- conta1 + conta2
   
   multa_conta1 <- conta1 * 0.02
   multa_conta2 <- conta2 * 0.02
   
   total_contas <- total_contas + multa_conta1 + multa_conta2
   
   salario_restante <- salario - total_contas
   
   escreva("O valor restante do salário de João após o pagamento das contas é: R$", salario_restante)
   
fimalgoritmo
