algoritmo "ex31"
\\Faça um algoritmo que receba o peso de uma pessoa, calcule e mostre:
\\o novo peso se a pessoa engordar 15% sobre o peso digitado;
\\o novo peso se a pessoa emagrecer 20% sobre o peso digitado.

var
peso, engordar, emagracer : real

inicio
escreva("Digite o seu peso: ")
leia(peso)

engordar <- peso * 1.15
emagrecer <- peso * 0.8

escreval("Se você engordar 15% do seu peso atual, você pesará ", engordar,"Kg")
escreval("Se você emagrecer 20% do seu peso atual, você pesará ", emagrecer,"Kg")


fimalgoritmo