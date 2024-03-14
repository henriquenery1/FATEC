algoritmo "ex20"
\\Uma confecção produz X blusas de lã e para isto gasta uma certa quantidade de novelos.
\\Faça um algoritmo para calcular quantos novelos de lã ela gasta por blusa.

var
blusas, novelos, novelo_por_blusa : real

inicio
escreva("Digite a quantidade de blusas confeccionadas: ")
leia(blusas)

escreva("Digite a quantidade de novelos usados: ")
leia(novelos)

novelo_por_blusa <- novelos / blusas

escreva("A quantidade de novelos gastos por blusa é de ", novelo_por_blusa," novelos.")

fimalgoritmo