algoritmo "semnome"
//  Um motorista deseja colocar no seu tanque X reais de gasolina.
// Escreva um algoritmo para ler o preço do litro da gasolina
// e o valor do pagamento, e exibir quantos litros ele conseguiu
//colocar no tanque.
var
valor_colocar_tanque: real
preco_do_litro_gasolina: real
litros_possiveis_no_tanque: real

inicio
escreval("Digite o valor em reais de gasolina que você deseja colocar no seu tanque:")
leia(valor_colocar_tanque)

escreval("Digite o preço do litro da gasolina:")
leia(preco_do_litro_gasolina)

litros_possiveis_no_tanque <- valor_colocar_tanque / preco_do_litro_gasolina

escreval("Você conseguiu colocar", litros_possiveis_no_tanque, " litros de gasolina no tanque")

fimalgoritmo