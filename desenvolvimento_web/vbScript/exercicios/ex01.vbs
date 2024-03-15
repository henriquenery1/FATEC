Dim area
Dim perimetro
Dim ladoQuadrado

ladoQuadrado = CDbl(InputBox("Digite o valor do lado do quadrado:"))

CalcularArea ladoQuadrado
CalcularPerimetro ladoQuadrado

MsgBox "O perímetro do quadrado é: " & perimetro & vbCrLf & "A área do quadrado é: " & area

Sub CalcularArea(lado)
    area = lado * lado
End Sub

Sub CalcularPerimetro(lado)
    perimetro = 4 * lado
End Sub
