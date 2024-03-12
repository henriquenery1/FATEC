algoritmo "ex39"
//João recebeu seu salário de R$ 1200,00 e precisa pagar duas contas (C1=R$ 200,00 e
//C2=R$120,00) que estão atrasadas. Como as contas estão atrasadas, João terá de pagar multa
//de 2% sobre cada conta.

//Faça um algoritmo que calcule e mostre quanto restará do salário do
João.

var
rest : real
C1, C2: real

inicio
escreval("Bem Vindo João")
escreval()

C1 <- 200*1.02
C2 <- 120*1.02

rest <- 1200 - (C1 + C2)

escreval("Ao pagar suas contas com a multa aplicada")
escreval("O restante do seu salário será de", rest)

fimalgoritmo
