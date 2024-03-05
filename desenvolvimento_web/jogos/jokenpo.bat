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
    echo [1] Iniciar o jogo
    echo [2] Regras
    echo [3] Sair
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

:regras
    cls
    echo                          ( o o )
    echo        +------------.oooO--(_)--Oooo.-------------+
    echo        -                                          -
    echo        -            Regras do Jo-Ken-Po           -
    echo        -                                          -
    echo        -   Pedra:   Empata com Pedra;             -
    echo        -            Ganha de tesoura e lagarto;   -
    echo        -            Perde de papel e Spock;       -
    echo        -                                          -
    echo        -   Papel:   Empata com papel;             -
    echo        -            Ganha de pedra e Spock;       -
    echo        -            Perde de tesoura e lagarto;   -
    echo        -                                          -
    echo        -   Tesoura: Empata com tesoura;           -                       
    echo        -            Ganha de lagarto e papel;     -
    echo        -            Perde de Pedra e Spock;       -
    echo        -                                          -
    echo        -   Lagarto: Empata com lagarto;           -
    echo        -            Ganha de papel e Spock;       -
    echo        -            Perde de pedra e tesoura;     -
    echo        -                                          -
    echo        -   Spock:   Empata com Spock;             -
    echo        -            Ganha de pedra e tesoura;     -
    echo        -            Perde de lagarto e papel.     -
    echo        -                                          -
    echo        +--------------------()--------------------+ 
    echo.
    echo [1] VOLTAR AO MENU PRINCIPAL
    echo [2] JOGAR
    echo.
    set /p regra_opcao=Escolha uma opcao: 
    echo.
    if %regra_opcao% == 1 (goto:menu)
    if %regra_opcao% == 2 (goto:game) else (
        echo.
        echo --------------------
        echo   Opcao invalida!
        echo --------------------
        pause
        goto:regras)