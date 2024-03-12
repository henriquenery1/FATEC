REM Codifique um programa que entre com 04 (quatro) números inteiros quaisquer 
REM e exiba o menor e maior números entre eles;

Dim numero1, numero2, numero3, numero4 
Dim menor, maior 

Call entrada_numeros

Sub entrada_numeros()
    numero1 = CDbl(InputBox("Digite o primeiro numero inteiro:"))
    numero2 = CDbl(InputBox("Digite o segundo numero inteiro:"))
    numero3 = CDbl(InputBox("Digite o terceiro numero inteiro:"))
    numero4 = CDbl(InputBox("Digite o quarto numero inteiro:"))
    
    Call encontrar_menor_e_maior
End Sub

Sub encontrar_menor_e_maior()
    menor = encontrar_menor(numero1, numero2, numero3, numero4)
    maior = encontrar_maior(numero1, numero2, numero3, numero4)
    
    MsgBox "O menor numero: " & menor & vbCrLf & "O maior numero: " & maior
End Sub

Function encontrar_menor(numero1, numero2, numero3, numero4)
    Dim menor
    menor = numero1
    If numero2 < menor Then
        menor = numero2
    End If
    If numero3 < menor Then
        menor = numero3
    End If
    If numero4 < menor Then
        menor = numero4
    End If
    encontrar_menor = menor
End Function

Function encontrar_maior(numero1, numero2, numero3, numero4)
    Dim maior
    maior = numero1
    If numero2 > maior Then
        maior = numero2
    End If
    If numero3 > maior Then
        maior = numero3
    End If
    If numero4 > maior Then
        maior = numero4
    End If
    encontrar_maior = maior
End Function
