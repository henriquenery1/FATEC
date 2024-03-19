algoritmo "ex19"
// A granja Frangotech possui um controle automatizado de cada frango da sua produção.
// No pé direito do frango há um anel com um chip de identificação;
// no pé esquerdo são dois anéis para indicar o tipo de alimento que ele deve consumir.
// Sabendo que o anel com chip custa R$4,00 e o anel de alimento custa R$3,50
// faça um algoritmo para calcular o gasto total da granja para marcar todos os seus frangos.


var
    quantidade_frangos: inteiro
    preco_chip, preco_anel_alimento, gasto_total: real

inicio
    preco_chip <- 4
    preco_anel_alimento <- 3.50

    escreva("Digite a quantidade de frangos na granja: ")
    leia(quantidade_frangos)

    gasto_total <- (quantidade_frangos * preco_chip) + (quantidade_frangos * 2 * preco_anel_alimento)

    escreva("O gasto total da granja para marcar todos os seus frangos é de R$", gasto_total)
fimalgoritmo