algoritmo "ex35"
\\Faça um algoritmo que calcule e mostre a área de um losango.

var
diagonal_maior, diagonal_menor, area : real

inicio
escreva("Digite o valor da diagonal maior: ")
leia(diagonal_maior)

escreva("Digite o valor da diagonal menor: ")
leia(diagonal_menor)

area <- (diagonal_maior * diagonal_menor)/2

escreva("A área do losango é de ", area)

fimalgoritmo