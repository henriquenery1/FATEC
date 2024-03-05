@echo off
title Jo-Ken-Po

:inicio
    mode 70,35
    color 0b
    
    echo.
    echo                     Desenvolvido por Henrique
    echo             __            __  __                  ____      
    echo            / /___        / // _/___  ____        / __ \____       
    echo       __  / / __ \______/    /  __ \/ __ \______/ /_/ / __ \
    echo      / /_/ / /_/ /_____/ /\  \   __/ / / /_____/ ____/ /_/ /
    echo      \____/\____/     /_/  \__\___/_/ /_/     /_/    \____/   
    echo.

    set /p user=Digite seu nome: 
    goto:menu

:menu
    cls
    echo                     ,,,                              
    echo                    (o o)                            
    echo          ------oOO--( )--OOo------
    echo          Seja bem-vindo(a) %user%!
    echo.
    echo --------------------------------------------------------
    echo [1] Iniciar o Jogo
    echo [2] Regras
    echo [3] Sair do Jogo
    echo --------------------------------------------------------

    set /p opcao=Escolha uma opcao: 
    if %opcao% == 1 (goto:game)
    if %opcao% == 2 (goto:regras)
    if %opcao% == 3 (exit) else (
        echo.
        echo --------------------
        echo   Opcao invalida!
        echo --------------------
        pause
        goto:menu)