algoritmo "ex11"

var
dias_sem_acidente: inteiro
dias, meses, anos: inteiro
aux: inteiro

inicio
escreval("Escreva a quantidade de dias sem acidentes")
leia(dias_sem_acidente)

anos <- dias_sem_acidente div 360
aux <- dias_sem_acidente mod 360

meses <- aux div 30
dias <- aux mod 30

escreval("Quantidade de anos", anos)
escreval("Quantidade de meses", meses)
escreval("Quantidade de dias", dias)

fimalgoritmo
