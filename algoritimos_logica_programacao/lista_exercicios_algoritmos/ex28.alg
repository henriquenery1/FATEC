algoritmo "ex28"
\\Faça um algoritmo que receba duas notas.
\\Calcule e mostre a média ponderada dessas notas
\\Considerando peso 2 para a primeira nota e peso 3 para a segunda nota.

var
nota1, nota2, ponderada : real

inicio
escreva("Digite a primeira nota do aluno: ")
leia(nota1)

escreva("Digite a segunda nota do aluno: ")
leia(nota2)

ponderada <- ((nota1*2)+(nota2*3)) \ 5

escreval("a média pondera do aluno será de", ponderada)

fimalgoritmo