Dim n1, n2, media, resp, situacao 'Declaração de variaveis
Dim audio

call carregar_voz

sub carregar_voz()
set audio=CreateObject("SAPI.SPVOICE")
audio.volume=100
audio.rate=1

call entrada_notas
end sub

call entrada_notas 

sub entrada_notas()
n1=CDbl(InputBox("Digite a nota 1 : ", "Rendimento aluno"))
n2=CDbl(InputBox("Digite a nota 2 : ", "Rendimento aluno"))

'Processamento
media=Round((n1+n2)/2, 1)

If media < 4 Then
    situacao = "Reprovado"
elseif  media >= 4 And media <= 6 then
    situacao = "Recuperação"
Else
    situacao = "Aprovado"
End If

audio.speak("Média do aluno "& media &""+ vbNewLine &_
            "Situação do aluno"& situacao &"")

resp=MsgBox("Media do aluno "& media &"" + vbNewLine &_
            "Situação do aluno"& situacao &"" + vbNewLine &_
            "Novo cálculo?", vbQuestion+vbYesNo,"Rend. Aluno")

if resp=vbYes then 
    call entrada_notas
Else    
    WScript.Quit
end If

end sub
