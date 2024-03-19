algoritmo "ex29"
\\Faça um algoritmo que receba o preço de um produto.
\\Calcule e mostre o novo preço, sabendo-se que este sofreu um desconto de 10%.

var
preco, desconto : real

inicio
escreva("Digite o valor do produto: ")
leia(preco)

desconto <- preco * 0.9

escreva("O valor do produto com o desconto aplicado será de", desconto)

fimalgoritmo