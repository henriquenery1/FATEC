Dim numero
Dim antecessor
Dim sucessor

numero = CInt(InputBox("Digite um numero inteiro:"))

calcular_antecessor_e_sucessor numero

MsgBox "Antecessor: " & antecessor & vbCrLf & "Numero: " & numero & vbCrLf & "Sucessor: " & sucessor

Sub calcular_antecessor_e_sucessor(num)
    antecessor = num - 1
    sucessor = num + 1
End Sub
