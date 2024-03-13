algoritmo "semnome"
// Faça um algoritmo para ler o salário de um funcionário e aumentá-lo em 15%.
// Após o aumento, desconte 8% de impostos.
// Imprima o salário inicial, o salário com o aumento e o salário final.
var
salario_inicial: real
aumento_salario: real
salario_final: real

inicio
escreval("Digite o salário inicial: ")
leia(salario_inicial)

aumento_salario <- salario_inicial * 1.15
salario_final <- aumento_salario * 0.92

escreval("Salário inicial: R$", salario_inicial)
escreval("Salário com aumento: R$", aumento_salario)
escreva("Salário final: R$", salario_final)

fimalgoritmo