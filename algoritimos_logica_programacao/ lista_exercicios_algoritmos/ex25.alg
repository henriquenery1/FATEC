algoritmo "ex25"
\\Calcule o volume de uma caixa d'água cilíndrica.

var
raio, altura, volume : real

inicio
escreva("Digite o raio da caixa de água: ")
leia(raio)

escreva("Digite a altura da caixa de água: ")
leia(altura)

volume <- 3.14 * (raio^2) * altura

fimalgoritmo