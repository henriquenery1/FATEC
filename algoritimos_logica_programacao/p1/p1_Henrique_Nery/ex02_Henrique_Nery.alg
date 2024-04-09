// A fábrica de refrigerantes Meia-Cola vende seu produto em três formatos: 
// lata de 350 ml, garrafa de 600ml e garrafa de 2 litros. 
// Se um comerciante compra uma determinada quantidade de cada formato, 
// faça um algoritmo para calcular quantos litros de refrigerante ele comprou.

algoritmo "ex02"

var
   quantidade_lata, quantidade_garrafa_600ml, quantidade_garrafa_2litros: inteiro
   total_litros: real

inicio
   escreval("Digite a quantidade de latas de 350ml: ")
   leia(quantidade_lata)
   
   escreval("Digite a quantidade de garrafas de 600ml: ")
   leia(quantidade_garrafa_600ml)
   
   escreval("Digite a quantidade de garrafas de 2 litros: ")
   leia(quantidade_garrafa_2litros)
   
   total_litros <- (quantidade_lata * 0.35) + (quantidade_garrafa_600ml * 0.6) + (quantidade_garrafa_2litros * 2)
   
   escreval("O total de litros de refrigerante comprados é: ", total_litros)
   
fimalgoritmo
