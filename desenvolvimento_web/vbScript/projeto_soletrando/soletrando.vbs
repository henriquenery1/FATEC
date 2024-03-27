Dim palavras(10)
Dim palavraCorreta, resposta
Dim contador, pontos
Dim jogarNovamente
Dim indice

Sub InicializarPalavras()
    palavras(1) = "computador"
    palavras(2) = "universo"
    palavras(3) = "faculdade"
    palavras(4) = "batata"
    palavras(5) = "cachorro"
    palavras(6) = "girassol"
    palavras(7) = "bicicleta"
    palavras(8) = "livro"
    palavras(9) = "amor"
    palavras(10) = "celular"
End Sub

Sub SoletrarPalavra()
    indice = indice + 1
    palavraCorreta = palavras(indice)

    Dim fala
    fala = "A palavra eh " & palavraCorreta & ". "

    Dim audio
    Set audio = CreateObject("SAPI.SpVoice")
    audio.Volume = 100
    audio.Rate = 1
    audio.Speak fala

    resposta = InputBox("Digite a palavra")

    If resposta = palavraCorreta Then
        pontos = pontos + 1
        MsgBox "Correto! Você acertou " & pontos & " de 10.", vbInformation
        If pontos < 10 Then
            SoletrarPalavra
        End If
    Else
        MsgBox "Incorreto! A palavra correta era " & palavraCorreta & ".", vbCritical
    End If
End Sub

Sub VerificarFimDeJogo()
    contador = contador + 1
    If pontos = 10 Then
        MsgBox "Parabéns! Você acertou todas as palavras!", vbInformation, "Fim de Jogo"
    Else
        If contador = 10 Then
            MsgBox "Você não conseguiu acertar 10 palavras. Tente novamente.", vbExclamation, "Fim de Jogo"
        Else
            jogarNovamente = MsgBox("Você acertou " & pontos & " de 10 palavras. Deseja jogar novamente?", vbYesNo)
            If jogarNovamente = vbYes Then
                pontos = 0
                contador = 0
                indice = 0
                SoletrarPalavra
            End If
        End If
    End If
End Sub

Sub Main()
    InicializarPalavras
    pontos = 0
    contador = 0
    indice = 0

    Do
        SoletrarPalavra
        VerificarFimDeJogo
    Loop While jogarNovamente = vbYes
End Sub

Call Main
