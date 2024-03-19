algoritmo "semnome"
// A lanchonete Gostosura vende apenas um tipo de sanduíche,
//cujo recheio inclui duas fatias de queijo, uma fatia de presunto e uma rodela de hambúrguer.
//Sabendo que cada fatia de queijo ou presunto pesa 50 gramas,
//e que a rodela de hambúrguer pesa 100 gramas, faça um algoritmo em que o dono
//forneça a quantidade de sanduíches a fazer, e a máquina informe
//as quantidades (em quilos) de queijo, presunto e carne necessários para compra.

var
quantidade_sanduiches: real
fatias_queijo: real
fatias_presunto: real
carne: real
peso_queijo: real
peso_presunto: real
peso_carne: real
inicio
// Seção de Comandos 
escreval("Digite a quantidade de sanduiches: ")
leia(quantidade_sanduiches)

fatias_queijo <- quantidade_sanduiches * 2
fatias_presunto <- quantidade_sanduiches
carne <- quantidade_sanduiches
peso_queijo <- (fatias_queijo * 50) / 1000
peso_presunto <- (fatias_presunto * 50) / 1000
peso_carne <- (carne * 100) / 1000

escreval("O peso em kg do queijo: ", peso_queijo)
escreval("O peso em kg do presunto: ", peso_presunto)
escreval("O peso em kg do carne: ", peso_carne)

fimalgoritmo