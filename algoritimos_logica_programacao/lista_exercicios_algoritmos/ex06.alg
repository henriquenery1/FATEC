algoritmo "ex06"
// O restaurante a quilo Bem-Bão cobra R$12,00 por cada quilo de refeição.
// Escreva um algoritmo que leia o peso do prato montado pelo cliente (em quilos) e imprima o valor a pagar.

// Assumir que a balança já desconte o peso do prato.

var
preco_quilo_refeicao, valor_pagar: real
peso_prato, peso_prato_montado, peso_comida: real

inicio
escreval("Digite o peso do prato montado pelo cliente:")
leia(peso_prato_montado)

peso_prato <- 0.5
preco_quilo_refeicao <- 12

peso_comida <- peso_prato_montado - peso_prato

valor_pagar <- peso_comida * preco_quilo_refeicao

escreval("O valor a pagar é: R$", valor_pagar)

fimalgoritmo