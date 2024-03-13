algoritmo "ex33"
\\Faça um algoritmo que calcule e mostre a área de um trapézio.

var
base_maior, base_menor, area, alt : real

inicio
escreva("Digite o valor da base maior: ")
leia(base_maior)

escreva("Digite o valor da base menor: ")
leia(base_menor)

escreva("Digite o valor da altura: ")
leia(alt)

area <-((base_maior + base_menor) * alt)/2

escreva("A área do trapézio é de ", area)

fimalgoritmo