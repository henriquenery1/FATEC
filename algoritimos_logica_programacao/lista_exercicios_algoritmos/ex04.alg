algoritmo "ex04"
// Escreva um algoritmo para ler o nome e a idade de uma pessoa,
// e exibir quantos dias de vida ela possui.
// Considere sempre anos completos, e que um ano possui 365 dias.

// Ex: uma pessoa com 19 anos possui 6935 dias de vida;
// veja um exemplo de saída: MARIA, VOCÊ JÁ VIVEU 6935 DIAS

var
nome_pessoa: caractere
idade_pessoa: inteiro
dias_de_vida: inteiro
dias_ano: inteiro


inicio
dias_ano <- 365

escreval("Digite o seu nome:")
leia(nome_pessoa)
escreval("Digite sua idade:")
leia(idade_pessoa)

dias_de_vida <- idade_pessoa * dias_ano

escreval(nome_pessoa, ", você já viveu" ,dias_de_vida, " dias")

// Seção de Comandos
fimalgoritmo