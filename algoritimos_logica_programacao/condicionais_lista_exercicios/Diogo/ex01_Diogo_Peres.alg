// Verifique se um número fornecido pelo usuário é par ou ímpar. 
// Apresente uma mensagem mostrando o número digitado e o resultado do teste.

algoritmo "ex01"

var
numero, resto: inteiro

inicio
escreval("Digite um número inteiro:")
leia(numero)

resto <- numero mod 2

se (resto = 0) entao
    escreval("O número ", numero, " é par")
senao 
    escreval("O número ", numero, " é impar")
fimse

fimalgoritmo
