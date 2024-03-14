algoritmo "ex26"
\\Faça um algoritmo que receba três números.
\\Calcule e mostre a multiplicação desses números.

var
num1, num2, num3, mult : real

inicio
escreva("Digite o primeiro número da multiplicação: ")
leia(num1)

escreva("Digite o segundo número: ")
leia(num2)

escreva("Digite o terceiro número: ")
leia(num3)

mult <- num1 * num2 * num3

escreva("O resultado da multiplicação é de", mult)

fimalgoritmo