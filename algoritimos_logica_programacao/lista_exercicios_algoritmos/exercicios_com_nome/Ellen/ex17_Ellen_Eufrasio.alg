algoritmo "ex17"
//  Alguns países medem temperaturas em graus Celsius, e outros em graus Fahrenheit. 
// Faça um algoritmo para ler uma temperatura Celsius e imprimi-la em Fahrenheit 
// (pesquise como fazer este tipo de conversão).

var
    temperatura_celsius, temperatura_fahrenheit: real

inicio
    escreva("Digite a temperatura em Celsius: ")
    leia(temperatura_celsius)
    
    temperatura_fahrenheit <- (temperatura_celsius * 9/5) + 32
    
    escreva("A temperatura em Fahrenheit é: ", temperatura_fahrenheit)

fimalgoritmo