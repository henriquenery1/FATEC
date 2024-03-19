algoritmo "ex08"
// Faça um algoritmo para ler três notas de um aluno em uma disciplina 
// e imprimir a sua média ponderada (as notas têm pesos respectivos de 1, 2 e 3).

Var
   nome_aluno: caractere
   nota1, nota2, nota3, media_ponderada: real

Inicio
   Escreva("Digite o nome do aluno: ")
   Leia(nome_aluno)

   Escreva("Digite a primeira nota de ", nome_aluno, ": ")
   Leia(nota1)

   Escreva("Digite a segunda nota de ", nome_aluno, ": ")
   Leia(nota2)

   Escreva("Digite a terceira nota de ", nome_aluno, ": ")
   Leia(nota3)

   media_ponderada <- (nota1 + (nota2 * 2) + (nota3 * 3)) / 3

   Escreval("A média ponderada do aluno: ", nome_aluno, "é: ", media_ponderada)

FimAlgoritmo