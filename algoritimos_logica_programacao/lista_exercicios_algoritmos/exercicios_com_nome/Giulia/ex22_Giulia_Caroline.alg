algoritmo "ex22"
\\Pedrinho tem um cofrinho com muitas moedas, e deseja saber quantos reais conseguiu poupar.
\\Faça um algoritmo para ler a quantidade de cada tipo de moeda
\\E imprimir o valor total economizado, em reais.
\\Considere que existam moedas de 1, 5, 10, 25 e 50 centavos, e ainda moedas de 1 real.
\\Não havendo moeda de um tipo, a quantidade respectiva é zero.

var
m1, m5, m10, m25, m50, m11, total : real

inicio
escreva("Digite a quantidade de moedas de 1 centavo: ")
leia(m1)

escreva("Digite a quantidade de moedas de 5 centavos: ")
leia(m5)

escreva("Digite a quantidade de moedas de 10 centavos: ")
leia(m10)

escreva("Digite a quantidade de moedas de 25 centavos: ")
leia(m25)

escreva("Digite a quantidade de moedas de 50 centavos: ")
leia(m50)

escreva("Digite a quantidade de moedas de 1 real: ")
leia(m11)

total <- (m1 * 0.01) + (m5 * 0.05) + (m10 * 0.1) + (m25 * 0.25) + (m50 * 0.5) + m11

escreva("Você economizou um total de R$", total)

fimalgoritmo