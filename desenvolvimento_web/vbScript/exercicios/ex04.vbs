Dim salario_minimo, quantidade_salarios_minimos, salario_bruto, inss, salario_liquido

quantidade_salarios_minimos = CInt(InputBox("Digite a quantidade de salários mínimos:"))

salario_minimo = 1412
salario_bruto = quantidade_salarios_minimos * salario_minimo
inss = Calcular_INSS(salario_bruto, salario_minimo)
salario_liquido = salario_bruto - inss

MsgBox "Salário Bruto: R$ " & salario_bruto & vbCrLf & _
        "INSS: R$ " & inss & vbCrLf & _
        "Salário Líquido: R$ " & salario_liquido

Function Calcular_INSS(salario_bruto, salario_minimo)
    Dim salario_superior_a_dois_minimos, desconto_11_porcento

    salario_superior_a_dois_minimos = salario_bruto >= 2 * salario_minimo
    desconto_11_porcento = salario_bruto * 0.11
    
    If salario_superior_a_dois_minimos Then
        Calcular_INSS = desconto_11_porcento
    Else
        Calcular_INSS = 0
    End If
End Function