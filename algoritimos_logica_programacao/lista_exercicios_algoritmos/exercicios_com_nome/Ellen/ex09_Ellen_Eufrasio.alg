algoritmo "semnome"
//Uma fábrica de camisetas produz os tamanhos pequeno, médio e grande, cada uma sendo
//vendida respectivamente por 10, 12 e 15 reais.
//Construa um algoritmo em que o usuário forneça a quantidade de camisetas pequenas,
//médias e grandes referentes a uma venda, e a máquina informe quanto será o valor arrecadado.

var
camisetas_pequenas: real
camisetas_medias: real
camisetas_grandes: real
valor_arrecadado: real

inicio
escreval("Digite a quantidade de camisetas pequenas: ")
leia(camisetas_pequenas)
escreval("Digite a quantidade de camisetas medias: ")
leia(camisetas_medias)
escreval("Digite a quantidade de camisetas grandes: ")
leia(camisetas_grandes)

valor_arrecadado <- (camisetas_pequenas * 10) + (camisetas_medias * 12) + (camisetas_grandes * 15)
escreva("O valor arrecadado é: R$ ", valor_arrecadado)

fimalgoritmo
