algoritmo "ex38"
//Faça um algoritmo que receba o ano de nascimento de uma pessoa e o ano atual, calcule e mostre:
//a) a idade dessa pessoa em anos;
//b) a idade dessa pessoa em meses;
//c) a idade dessa pessoa em dias;
//d) a idade dessa pessoa em semanas.

var
nasc, atual, anos, meses, dias, semanas : inteiro
conta : inteiro

inicio
escreva("Digite o ano do seu nascimento: ")
leia(nasc)

escreva("Digite o ano atual: ")
leia(atual)

anos <- atual - nasc
meses <- anos * 12
dias<- meses * 30
semanas <- dias / 7

escreval("Sua idade é", anos)
escreval("Sua idade em meses é de", meses)
escreval("Sua idade em dias é de", dias)
escreval("Sua idade em semanas é de", semanas)

fimalgoritmo