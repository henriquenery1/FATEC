Algoritmo "ex05"

Var
quantidade_livros: inteiro
valor_criterio_a, valor_criterio_b, diferenca_valor: real

Inicio
escreval("Digite a quantidade de livros que deseja comprar:")
leia(quantidade_livros)

valor_criterio_a <- (quantidade_livros * 0.25) + 7.5
valor_criterio_b <- (quantidade_livros * 0.5) + 2.5

se valor_criterio_a > valor_criterio_b entao
    escreval("A melhor opção de desconto é o criterio B")
    diferenca_valor <- valor_criterio_a - valor_criterio_b
    escreval("Que ficaria R$", diferenca_valor, " mais barato")
senao
    escreval("A melhor opção de desconto é o criterio A")
    diferenca_valor <- valor_criterio_b - valor_criterio_a
    escreval("Que ficaria R$", diferenca_valor, "mais barato")
fimse

Fimalgoritmo