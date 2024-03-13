algoritmo "ex02"
// Faça um algoritmo para calcular quantas ferraduras
// são necessárias para equipar todos os cavalos comprados para um haras.

var
cavalos_comprados: inteiro
ferraduras_cavalos: inteiro

inicio
escreval("Digite a quantidade de cavalos:")
leia(cavalos_comprados)

ferraduras_cavalos <- cavalos_comprados * 4

escreval()
escreval("A quantidade de ferraduras necessárias para equipar", cavalos_comprados, " cavalos é:", ferraduras_cavalos)

fimalgoritmo