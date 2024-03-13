algoritmo "semnome"
// Ler um número inteiro (assuma até três dígitos) e imprimir a saída da seguinte forma:
// CENTENA = x
// DEZENA = x
// UNIDADE = x
var
numero: inteiro
centena: inteiro
dezena: inteiro
unidade: inteiro

resto_centena: inteiro

inicio
escreval("Digite um numero inteiro com 3 digitos: ")
leia(numero)

centena <- numero div 100

resto_centena <- numero mod 100

dezena <- resto_centena div 10

unidade <- numero mod 10

escreval("CENTENA :", centena)
escreval("DEZENA :", dezena)
escreval("UNIDADE :", unidade)

fimalgoritmo