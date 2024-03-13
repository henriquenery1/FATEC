algoritmo "semnome"
// Três amigos, Carlos, André e Felipe. decidiram rachar igualmente a conta de um bar.
// Faça um algoritmo para ler o valor total da conta e imprimir quanto cada um deve pagar, mas faça com que Carlos e André não paguem centavos.
// Ex: uma conta de R$101,53 resulta em R$33,00 para Carlos, R$33,00 para André e R$35,53 para Felipe.
var
valor_conta: real
valor_sem_centavos: real
valor_centavos: real
valor_felipe: real

inicio
escreval("Digite o valor da conta: ")
leia(valor_conta)

valor_sem_centavos <- int(valor_conta / 3)
escreval("O valor para Carlos e André é: ", valor_sem_centavos)

valor_felipe <- valor_conta - (valor_sem_centavos)*2

escreval("O valor para Felipe é: ", valor_felipe)

fimalgoritmo
