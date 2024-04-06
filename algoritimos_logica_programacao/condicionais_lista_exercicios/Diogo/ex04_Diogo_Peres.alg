algoritmo "ex04"

var
prova1, prova2, prova3: inteiro
media, nota_necessaria: real

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

se media > 7 entao
    escreval("Você está aprovado")
    escreval()

senao
    se media < 7 entao
        se media > 3 entao
            nota_necessaria <- 12 - media
            escreval("Você precisa fazer o exame e sua nota deve ser maior que ", nota_necessaria)
        senao
            escreval("Você está reprovado")
        fimse
    fimse
fimse

fimalgoritmo