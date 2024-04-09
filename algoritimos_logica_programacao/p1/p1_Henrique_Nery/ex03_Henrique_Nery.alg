// Faça um algoritmo que receba o peso de uma pessoa, calcule e mostre:
// a) o novo peso se a pessoa engordar 15% sobre o peso digitado;
// b) o novo peso se a pessoa emagrecer 20% sobre o peso digitado.

algoritmo "ex03"

var
   peso, novo_peso_engordar, novo_peso_emagrecer: real

inicio
   escreval("Digite o peso da pessoa: ")
   leia(peso)
   
   novo_peso_engordar <- peso + (peso * 0.15)
   
   novo_peso_emagrecer <- peso - (peso * 0.20)
   
   escreval("Se a pessoa engordar 15%, o novo peso será: ", novo_peso_engordar)
   escreval("Se a pessoa emagrecer 20%, o novo peso será: ", novo_peso_emagrecer)
   
fimalgoritmo
