@echo off
title JOGO DE ADIVINHAR
mode 70,35
color 0b

:inicio
    set /a tentativas = 5
    set /a numero_sorteado=(%random% %% 50) + 1
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
    echo ------------------------------------------------------ 

    if %tentativas% LSS 5 (
        call:exibir_palpites_anteriores
        echo.
    )

    set /p palpite=Digite o seu palpite: 
    goto:verificar_palpite


:verificar_palpite 

    if %tentativas% == 0 (
        echo.
        echo ------------------------------------------------------
        echo       VOCE PERDEU! O numero sorteado era: %numero_sorteado%
        echo ------------------------------------------------------
        echo. 
        pause
        cls
        goto:verificar_continuidade_jogo  
    )    

    if %palpite% GTR 50 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero menor que 50
        echo ------------------------------------------------------
        pause
        cls
        goto:palpite
        
    ) 

    if %palpite% LSS 1 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero maior que 1
        echo ------------------------------------------------------
        pause
        cls
        goto:palpite
    ) 
           
    if %palpite% == %numero_sorteado% (
        echo.
        echo ------------------------------------------------------
        echo             PARABENS, VOCE ACERTOU!
        echo ------------------------------------------------------
        echo. 
        pause
        cls
        goto:verificar_continuidade_jogo     
    )   

    if %palpite% LSS %numero_sorteado% (
        echo.
        echo ------------------------------------------------------
        echo           O numero sorteado maior que %palpite% 
        echo ------------------------------------------------------
        set /a tentativas=%tentativas% - 1
        pause
        cls
        goto:palpite
    )
    
    if %palpite% GTR %numero_sorteado% (
        echo.
        echo ------------------------------------------------------
        echo           O numero sorteado menor que %palpite% 
        echo ------------------------------------------------------
        set /a tentativas=%tentativas% - 1
        pause
        cls
        goto:palpite
    )

:verificar_continuidade_jogo
    cls
    set /p ext=Deseja jogar novamente? (S/N) : 
    if /i %ext% == s (goto:inicio)
    if /i %ext% == n (goto:inicio) else (
        echo.
        echo ---------------------------------------------------------
        echo             Opcao invalida digite S ou N
        echo ---------------------------------------------------------
        pause
        goto:verificar_continuidade_jogo)

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
        set /a quarto_palpite=%palpite%
        echo Numeros jogados: %primeiro_palpite% %segundo_palpite% %terceiro_palpite% %palpite%
    )