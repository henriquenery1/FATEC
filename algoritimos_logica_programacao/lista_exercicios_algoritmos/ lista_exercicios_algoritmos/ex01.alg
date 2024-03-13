algoritmo "semnome"
// A imobiliária Imóbilis vende apenas terrenos retangulares.
// Faça um algoritmo para ler as dimensões de um terreno
// e depois exibir a área do terreno.

var
altura_terreno, largura_terreno, area_terreno: real

inicio
// Seção de Comandos 
escreval("Digite a altura do terreno:")
leia(altura_terreno)
escreval("Digite a largura do terreno:")
leia(largura_terreno)

area_terreno <- altura_terreno * largura_terreno

escreval("A área do terreno é: ", area_terreno,"m²")

fimalgoritmo