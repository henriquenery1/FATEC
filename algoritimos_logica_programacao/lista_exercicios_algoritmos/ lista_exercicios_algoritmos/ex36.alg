algoritmo "ex36"
\\Faça um algoritmo que receba o valor do salário-mínimo e o valor do salário de um funcionário
\\ calcule e mostre a quantidade de salários-mínimos que ganha esse funcionário.

var
salario : real
conta: real

inicio
escreval("*O sálario mínimo é de R$ 1412,00 com base em 2024*")
escreval()
escreva("Digite o salário de um funcionário: ")
leia(salario)

conta <- salario / 1412

escreval("A quantidade de salários mínimos que este funcionário recebe é de ", conta)

fimalgoritmo