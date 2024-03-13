algoritmo "ex37"
//Faça um algoritmo que calcule e mostre a tabuada de um número digitado pelo usuário.

var
tabu : inteiro
v2, v3, v4, v5, v6, v7, v8, v9, v10 : inteiro

inicio
escreva("Digite o número da tabuada desejada: ")
leia(tabu)

v2 <- tabu * 2
v3 <- tabu * 3
v4 <- tabu * 4
v5 <- tabu * 5
v6 <- tabu * 6
v7 <- tabu * 7
v8 <- tabu * 8
v9 <- tabu * 9
v10 <- tabu * 10

escreval("Tabuada", tabu)
escreval(" 0 X ", tabu, " =  0")
escreval(" 1 X ", tabu, " = ", tabu)
escreval(" 2 X ", tabu, " = ", v2)
escreval(" 3 X ", tabu, " = ", v3)
escreval(" 4 X ", tabu, " = ", v4)
escreval(" 5 X ", tabu, " = ", v5)
escreval(" 6 X ", tabu, " = ", v6)
escreval(" 7 X ", tabu, " = ", v7)
escreval(" 8 X ", tabu, " = ", v8)
escreval(" 9 X ", tabu, " = ", v9)
escreval("10 X ", tabu, " = ", v10)

fimalgoritmo
