algoritmo "ex21"
\\A fábrica de refrigerantes Meia-Cola vende seu produto em três formatos:
\\lata de 350 ml, garrafa de 600 ml e garrafa de 2 litros.
\\Se um comerciante compra uma determinada quantidade de cada formato.
\\Faça um algoritmo para calcular quantos litros de refrigerante ele comprou.

var
l_350, g_600, g_2, litros: inteiro

inicio
escreva("Digite a quantidade de latas de refrigerante(350 ml) você comprou: ")
leia(l_350)

escreva("Digite a quantidade de garrafas de refrigerante(600 ml) você comprou: ")
leia(g_600)

escreva("Digite a quantidade de garrafas de refrigerante(2 litros) você comprou: ")
leia(g_2)

litros <- (l_350 * 350) + (g_600 * 600) + (g_2 * 2000)

escreva("Você comprou ", litros," litros de refrigerante.")

fimalgoritmo