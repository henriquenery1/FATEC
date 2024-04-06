// Um aluno realizou três provas de uma disciplina. 
// Considerando o critério abaixo
// faça um programa que mostre se ele ficou para exame. 
// Em caso positivo, leia a
// nota do exame e verifique se conseguiu a aprovação ou não.
// Media = (prova1 + prova2 + prova3)/3
// A média deve ser maior ou igual a 7,0.
// Se não conseguir, a nova média deve ser:
// Final = (Media + Exame)/2
// Nesse caso, a média final deve ser maior ou igual a 5,0

algoritmo "ex02"

var
prova1, prova2, prova3: inteiro
media, exame, nota_final: real

inicio
escreval("Digite sua nota da prova 1:")
leia(prova1)
escreval()

escreval("Digite sua nota da prova 2:")
leia(prova2)
escreval()

escreval("Digite sua nota da prova 3:")
leia(prova3)

media <- (prova1 + prova2 + prova3) / 3

se media < 7 entao
    escreval("Você precisa fazer o exame")
    escreval()
    escreval("Digite a nota do exame")
    leia(exame)

    nota_final <- (media + exame) / 2

    se nota_final >= 5 entao
        escreval("Aprovado! Sua nota final é ", nota_final)
    senao
        escreval("Reprovado! Sua nota final é ", nota_final)
    fimse

senao
    escreval("Aprovado! Sua média é ", media)

fimse

fimalgoritmo