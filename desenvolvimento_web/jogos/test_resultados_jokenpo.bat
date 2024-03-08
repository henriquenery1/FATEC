@echo off
title Testes Jo-Ken-Po

:inicio
    set escolha_jogador_txt=Pedra
    set escolha_computador_txt=Pedra
    call :test_empate

    set escolha_jogador_txt=Pedra
    set escolha_computador_txt=Papel
    call :test_derrota

    set escolha_jogador_txt=Pedra
    set escolha_computador_txt=Tesoura
    call :test_vitoria

    set escolha_jogador_txt=Pedra
    set escolha_computador_txt=Lagarto
    call :test_vitoria

    set escolha_jogador_txt=Pedra
    set escolha_computador_txt=Spock
    call :test_derrota

    set escolha_jogador_txt=Papel
    set escolha_computador_txt=Pedra
    call :test_vitoria

    set escolha_jogador_txt=Papel
    set escolha_computador_txt=Papel
    call :test_empate

    set escolha_jogador_txt=Papel
    set escolha_computador_txt=Tesoura
    call :test_derrota


:determinar_resultado_jogo
    if %escolha_jogador_txt% == %escolha_computador_txt% (
        echo Empate!
    ) else if %escolha_jogador_txt% == Pedra (
        if %escolha_computador_txt% == Tesoura (
            echo Voce ganhou!
        ) else if %escolha_computador_txt% == Lagarto (
            echo Voce ganhou!
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Papel (
        if %escolha_computador_txt% == Pedra (
            echo Voce ganhou!
        ) else if %escolha_computador_txt% == Spock (
            echo Voce ganhou!
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Tesoura (
        if %escolha_computador_txt% == Papel (
            echo Voce ganhou!
        ) else if %escolha_computador_txt% == Lagarto (
            echo Voce ganhou!
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Lagarto (
        if %escolha_computador_txt% == Spock (
            echo Voce ganhou!
        ) else if %escolha_computador_txt% == Papel (
            echo Voce ganhou!
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Spock (
        if %escolha_computador_txt% == Tesoura (
            echo Voce ganhou!
        ) else if %escolha_computador_txt% == Pedra (
            echo Voce ganhou!
        ) else (
            echo Voce perdeu!
        )
    )
    goto :eof

:test_empate
    call :exibir_jogada
    echo Deve ser empate
    call :determinar_resultado_jogo
    echo.

:test_vitoria
call :exibir_jogada
    echo Deve exibir Voce ganhou!
    call :determinar_resultado_jogo
    echo.

:test_derrota
call :exibir_jogada
    echo Deve exibir Voce perdeu!
    call :determinar_resultado_jogo
    echo.

:exibir_jogada
    echo Jogador escolheu: %escolha_jogador_txt%
    echo Computador escolheu: %escolha_computador_txt%