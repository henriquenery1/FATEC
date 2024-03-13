algoritmo "Arrecadação e valor "
// Ex03

// A padaria Hotpão vende uma certa quantidade de pães franceses e uma quantidade de broas a cada dia.
// Cada pãozinho custa R$ 0,12 e a broa custa R$ 1,50. Ao final do dia, o dono quer
// saber quanto arrecadou com a venda dos pães e broas (juntos), e quanto deve guardar numa
// conta de poupança (10% do total arrecadado).

// Você foi contratado para fazer os cálculos para o dono.
// Com base nestes fatos, faça um algoritmo para ler as quantidades de pães e de broas,
// e depois calcular os dados solicitados.

var
quantidade_paes_vendidos, quantidade_broas_vendidas: inteiro
valor_total_paes, valor_total_broas: real
valor_total_dia: real
valor_poupanca: real


inicio
escreval("Digite a quantidade de pâes vendidos no dia:")
leia(quantidade_paes_vendidos)

escreval("Digite a quantidade de broas vendidas no dia:")
leia(quantidade_broas_vendidas)


valor_total_paes <- quantidade_paes_vendidos * 0.12
valor_total_broas <- quantidade_broas_vendidas * 1.50
valor_total_dia <- valor_total_paes + valor_total_broas

valor_poupanca <- valor_total_dia *0.1

escreval()
escreval("-----------------------------------------------------------")
escreval("O valor total arrecadado é: R$", valor_total_dia)
escreval("E o valor que você deve guardar na conta de poupança é: R$",valor_poupanca)

fimalgoritmo