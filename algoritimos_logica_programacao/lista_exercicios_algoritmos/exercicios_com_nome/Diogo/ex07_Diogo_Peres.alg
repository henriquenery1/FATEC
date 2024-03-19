algoritmo "ex07"
// Entrar com o dia e o mês de uma data
// e informar quantos dias se passaram desde o início do ano.
// Esqueça a questão dos anos bissextos
// e considere sempre que um mês possui 30 dias.

var
dia: inteiro
mes: inteiro
dias_do_mes: inteiro
dias_desde_comeco_ano: inteiro

inicio
escreval("Insira o dia e o mês para saber quantos dias se passaram desde o início do ano")
escreval()
escreval("Digite o dia:")
leia(dia)

escreval("Digite o número do mês:")
leia(mes)

dias_do_mes <- 30
dias_desde_comeco_ano <- ((mes - 1) * dias_do_mes) + dia

escreval("Se passaram", dias_desde_comeco_ano, " dias desde de o início do ano")

fimalgoritmo