// Numa promoção exclusiva para o Dia da Mulher, 
// uma loja quer dar descontos para todos, mas especialmente para mulheres.
// Faça um programa que leia nome, sexo e o valor das compras do cliente
// e calcule o preço com desconto. Sabendo que:
// Homens ganham 5% de desconto
// Mulheres ganham 13% de desconto

algoritmo "ex05"

var
   nome: caractere
   sexo: caractere
   valor_compras, preco_com_desconto: real

inicio
   escreval("Digite o nome do cliente: ")
   leia(nome)

   escreval("Digite o sexo do cliente: ")
   escreval("[1] para mulher")
   escreval("[2] para homem")
   leia(sexo)

   escreval("Digite o valor das compras do cliente: ")
   leia(valor_compras)

   se sexo = "1" entao
      preco_com_desconto <- valor_compras - (valor_compras * 0.13)
   senao
      preco_com_desconto <- valor_compras - (valor_compras * 0.05)
   fimse

   escreval("O preço com desconto para o cliente ", nome, " é: R$", preco_com_desconto)

fimalgoritmo
