algoritmo "semnome"
// Construa um algoritmo para calcular a distância entre dois pontos do plano cartesiano.
// Cada ponto é um par ordenado (x,y).

var
ponto_x1: real
ponto_x2: real
ponto_y1: real
ponto_y2: real

distancia_entre_dois_pontos: real

inicio
escreval("Digite o ponto X:")
leia(ponto_x1)

escreval("Digite o segundo ponto X :")
leia(ponto_x2)

escreval("Digite o ponto Y:")
leia(ponto_y1)

escreval("Digite o segundo ponto Y:")
leia(ponto_y2)

distancia_entre_dois_pontos <- RaizQ((ponto_x2 - ponto_x1)^2 + (ponto_y2 - ponto_y1)^2)

escreval("A distancia entre os dois pontos do plano cartesiano é", distancia_entre_dois_pontos)

fimalgoritmo