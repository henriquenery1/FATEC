@echo off
title JOGO DE ADIVINHAR
mode 70,35
color 0b

:inicio
    set /a tentativas = 5
    set /a numero_sorteado=(%random% %% 50) + 1
    set /a primeiro_palpite = 0
    set /a segundo_palpite = 0
    set /a terceiro_palpite = 0
    set /a quarto_palpite = 0
    set /a quinto_palpite = 0
    echo.  

:palpite
    echo                       ,,,                              
    echo                      (o o)                            
    echo           -------oOO--( )--OOo-------
    echo            Desenvolvido por Henrique
    echo.
    echo            Quantidade de tentativas: %tentativas%
    echo ------------------------------------------------------
    echo       ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50
    echo.
    set /p palpite=Digite o seu palpite: 
    set /a primeiro_palpite = %palpite%
    goto:jogada
