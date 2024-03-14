algoritmo "ex30"
\\ Um funcionário recebe um salário fixo mais 4% de comissão sobre as vendas.
\\Faça um algoritmo que receba o salário fixo de um funcionário e o valor de suas vendas.
\\calcule e mostre a comissão e o salário final do funcionário.

var
salário, vendas , comissão , sal_final: real

inicio
escreva("Digite o salário fixo do funcionário: ")
leia(salário)

escreva("Digite o valor das vendas deste funcionário: ")
leia(vendas)

comissão <- vendas * 1.04
sal_final <- comissão + salário

escreval("A comissão que este funcionário vai receber é de", comissão)
escreval("O salário final deste funcionário será de", sal_final)

fimalgoritmo
