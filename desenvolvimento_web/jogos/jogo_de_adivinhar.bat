@echo off
title JOGO DE ADIVINHAR

:inicio
    mode 70,35
    set /a tentativas=5
    set /a numero_sorteado=(%random% %% 50) + 1
    echo.  

:solicitar_palpite
    color 0b

    call :exibir_banner_jogo

    if %tentativas% LSS 5 (
        call :exibir_palpites_anteriores
    )

    set /p palpite=Digite o seu palpite: 
    call :validar_entrada_palpite

    goto :verificar_palpite


:verificar_tentativa
    if %tentativas% == 1 (
        color 0c
        echo.
        echo ------------------------------------------------------
        echo       VOCE PERDEU! O numero sorteado era: %numero_sorteado%
        echo ------------------------------------------------------
        echo. 
        pause
        goto :verificar_continuidade_jogo  
    )
    goto :eof

:validar_entrada_palpite
    if %palpite% GTR 50 (
        call :exibir_erro_numero_invalido
    ) 

    if %palpite% LSS 1 (
        call :exibir_erro_numero_invalido
    )
    goto :eof

:verificar_palpite   
    call :verificar_tentativa

    if %palpite% == %numero_sorteado% (
        color 0a
        echo.
        echo ------------------------------------------------------
        echo             PARABENS, VOCE ACERTOU!
        echo ------------------------------------------------------
        echo. 
        pause
        cls
        goto :verificar_continuidade_jogo     
    )   

    if %palpite% LSS %numero_sorteado% (
        echo.
        echo ------------------------------------------------------
        echo           O numero sorteado maior que %palpite% 
        echo ------------------------------------------------------
        set /a tentativas=%tentativas% - 1
        pause
        cls
        goto :solicitar_palpite
    )
    
    if %palpite% GTR %numero_sorteado% (
        echo.
        echo ------------------------------------------------------
        echo           O numero sorteado menor que %palpite% 
        echo ------------------------------------------------------
        set /a tentativas=%tentativas% - 1
        pause
        cls
        goto :solicitar_palpite
    )

:verificar_continuidade_jogo
    cls
    set /p ext=Deseja jogar novamente? (S/N) : 
    if /i %ext% == s (goto :inicio)
    if /i %ext% == n (exit) else (
        echo.
        echo ---------------------------------------------------------
        echo             Opcao invalida digite S ou N
        echo ---------------------------------------------------------
        pause
        goto :verificar_continuidade_jogo) 

:exibir_banner_jogo
    echo                       ,,,                              
    echo                      (o o)                            
    echo           -------oOO--( )--OOo-------
    echo            Desenvolvido por Henrique
    echo.
    echo            Quantidade de tentativas: %tentativas%
    echo ------------------------------------------------------
    echo       ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50
    echo ------------------------------------------------------
    goto :eof

:exibir_palpites_anteriores
    if %tentativas% == 4 (
        set /a primeiro_palpite=%palpite%
        echo Numero jogado: %palpite%
    )

    if %tentativas% == 3 (
        set /a segundo_palpite=%palpite%
        echo Numeros jogados: %primeiro_palpite% %palpite%
    )

    if %tentativas% == 2 (
        set /a terceiro_palpite=%palpite%
        echo Numeros jogados: %primeiro_palpite% %segundo_palpite% %palpite%
    )

    if %tentativas% == 1 (
        echo Numeros jogados: %primeiro_palpite% %segundo_palpite% %terceiro_palpite% %palpite%
    )

    echo.
    set /a palpite=0
    goto :eof

:exibir_erro_numero_invalido
    echo.
    echo --------------------------------------------------------
    echo    Erro! Por favor, digite um numero entre 1 e 50.
    echo --------------------------------------------------------
    set /p palpite=Digite o seu palpite: 
    goto :validar_entrada_palpite
    pause
    cls
    goto :solicitar_palpite
