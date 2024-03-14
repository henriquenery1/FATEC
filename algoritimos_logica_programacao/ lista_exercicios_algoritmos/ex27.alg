algoritmo "ex27"
\\Faça um algoritmo que receba dois números.
\\Calcule e mostre a divisão do primeiro número pelo segundo.
\\Sabe-se que o segundo número não pode ser zero,
\\Portanto não é necessário se preocupar com validações.

var
num1, num2, divisao : real

inicio
escreval("*Lembrando que o segundo número não pode ser 0*")
escreval()

escreva("Digite o primeiro número da divisão: ")
leia(num1)

escreva("Digite o segundo número da divisão: ")
leia(num2)

divisao <- num1 \ num2

escreva("A divisão de ", num1," por ", num2," é de", divisao)

fimalgoritmo