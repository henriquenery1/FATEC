algoritmo "ex18"
//  A empresa Hipotheticus paga R$10,00 por hora normal trabalhada, e R$15,00 por hora extra.
// Faça um algoritmo para calcular e imprimir o salário bruto e o salário líquido de um determinado funcionário.
// Considere que o salário líquido é igual ao salário bruto descontando-se 10% de impostos.

var
    horas_normais, horas_extra: real
    valor_hora_normal, valor_hora_extra, taxa_imposto: real
    salario_bruto, salario_liquido, impostos: real

inicio
    valor_hora_normal <- 10
    valor_hora_extra <- 15
    taxa_imposto <- 0.1

    escreva("Digite o número de horas normais trabalhadas: ")
    leia(horas_normais)

    escreva("Digite o número de horas extras trabalhadas: ")
    leia(horas_extra)

    salario_bruto <- (horas_normais * valor_hora_normal) + (horas_extra * valor_hora_extra)
    escreval("O salário bruto é: R$", salario_bruto)

    impostos <- salario_bruto * taxa_imposto

    salario_liquido <- salario_bruto - impostos

    escreva("O salário líquido é: R$", salario_liquido)
fimalgoritmo
