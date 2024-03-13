algoritmo "ex40"
//Faça um algoritmo que receba o valor dos catetos de um triângulo, calcule e mostre o valor da hipotenusa.

var
cat_o, cat_a : real
conta : real
hipo : real

inicio
escreva("Digite o valor do cateto oposto: ")
leia(cat_o)

escreva("Digite o valor do cateto adjacente: ")
leia(cat_a)

conta <- (cat_o^2) + (cat_a^2)

hipo <- raizq(conta)

escreval("O valor da hipotenusa desse triângulo é igual a", hipo)

fimalgoritmo
