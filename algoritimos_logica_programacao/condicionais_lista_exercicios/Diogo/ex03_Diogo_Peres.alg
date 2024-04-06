algoritmo "ex03"

var
trabalho, avaliacao, exame: inteiro
media_ponderada: real

inicio
escreval("Digite sua nota do trabalho:")
leia(trabalho)
escreval()

escreval("Digite sua nota da avalição:")
leia(avaliacao)
escreval()

escreval("Digite sua nota do exame")
leia(exame)

media_ponderada <- ((trabalho * 2) + (avaliacao * 3) + (exame * 5)) / 10

se media_ponderada > 8 entao
    escreval("Você tem o conceito A")
senao
    se media_ponderada > 7 entao
    escreval("Você tem o conceito B")
    senao
        se media_ponderada > 6 entao
        escreval("Você tem o conceito C")
        senao
            se media_ponderada > 5 entao
            escreval("Você tem o conceito D")
            senao
                escreval("Você tem o conceito E")
            fimse
        fimse
    fimse
fimse

fimalgoritmo