algoritmo "ex23"
\\Num dia de sol, você deseja medir a altura de um prédio, porém, a trena não é  suficientemente longa.
\\Assumindo que seja possível medir sua sombra e a do prédio no chão, e que você lembre da sua altura.
\\Faça um algoritmo para ler os dados necessários e calcular a altura do prédio.

var
altura, sombra, som_pessoa, alt_prédio : real 

inicio
escreval("Digite a sua altura: ")
leia(altura)

escreval("Digite a sombra do prédio em metros: ")
leia(sombra)

som_pessoa <- (altura * 1.5)
alt_prédio <- (altura * sombra) / som_pessoa

escreval("A altura do prédio é ", alt_prédio,"m")

fimalgoritmo