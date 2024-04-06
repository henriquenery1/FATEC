Algoritmo "ex06"

Var
peso_paciente, altura_paciente, opcao: real
peso_ideal_homem, peso_ideal_mulher: real

Inicio
escreval("Qual o sexo do paciente?")
escreval("[1] Homem")
escreval("[2] Mulher")
leia(opcao)

escreval("Digite o peso do paciente:")
leia(peso_paciente)

escreval("Digite a altura do paciente:")
leia(altura_paciente)

peso_ideal_homem <- ((altura_paciente - 152.4) * 0.75) + 52 
peso_ideal_mulher <- ((altura_paciente - 152.4) * 0.67) + 52

se opcao = 1 entao
    se peso_paciente = peso_ideal_homem entao
        escreval("O paciente está no peso ideal")
    senao
        se peso_paciente > peso_ideal_homem entao
            escreval("O paciente está acima do peso ideal")
        senao
            escreval("O paciente está abaixo do peso ideal")
        fimse
    fimse
senao
    se peso_paciente = peso_ideal_mulher entao
        escreval("O paciente está no peso ideal")
    senao
        se peso_paciente > peso_ideal_mulher entao
            escreval("O paciente está acima do peso ideal")
        senao
            escreval("O paciente está abaixo do peso ideal")
        fimse
    fimse
fimse

Fimalgoritmo