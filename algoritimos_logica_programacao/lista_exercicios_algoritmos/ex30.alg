algoritmo "ex30"
\\ Um funcionário recebe um salário fixo mais 4% de comissão sobre as vendas.
\\Faça um algoritmo que receba o salário fixo de um funcionário e o valor de suas vendas.
\\calcule e mostre a comissão e o salário final do funcionário.

var
salario, valor_vendas, comissao, salario_final: real

inicio
escreva("Digite o salário fixo do funcionário: ")
leia(salario)

escreva("Digite o valor das vendas deste funcionário: ")
leia(valor_vendas)

comissao <- valor_vendas * 0.04
salario_final <- comissao + salario

escreval("A comissão que este funcionário vai receber é de", comissao)
escreval("O salário final deste funcionário será de", salario_final)

fimalgoritmo
