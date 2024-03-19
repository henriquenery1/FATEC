algoritmo "ex23"
\\Num dia de sol, você deseja medir a altura de um prédio, porém, a trena não é  suficientemente longa.
\\Assumindo que seja possível medir sua sombra e a do prédio no chão, e que você lembre da sua altura.
\\Faça um algoritmo para ler os dados necessários e calcular a altura do prédio.

var
altura_pessoa, sombra_pessoa, sombra_predio, altura_predio : real

inicio
escreval("Digite a sua altura (em metros): ")
leia(altura_pessoa)

escreval("Digite o comprimento da sua sombra (em metros): ")
leia(sombra_pessoa)

escreval("Digite o comprimento da sombra do prédio (em metros): ")
leia(sombra_predio)

altura_predio <- (sombra_predio * altura_pessoa) / sombra_pessoa

escreval("A altura do prédio é ", altura_predio," metros.")

fimalgoritmo