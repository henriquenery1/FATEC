@echo off
title Jo-Ken-Po

:inicio
    mode 70,35
    color 09

    call :exibir_jokenpo

    set arquivo_ranking=ranking.txt
    set maximo_jogadas=5
    set pontos=0
    set jogadas=0

    set /p nome_jogador=Digite seu nome: 
    
    goto:menu

:menu
    call :exibir_menu_principal

    set /p opcao=Escolha uma opcao: 
    if %opcao% == 1 (goto:jogo)
    if %opcao% == 2 (goto:exibir_regras)
    if %opcao% == 3 (goto:exibir_ranking)
    if %opcao% == 4 (goto:trocar_jogador)
    if %opcao% == 5 (exit) else (
        call:exibir_mensagem_opcao_invalida
        pause
        goto:menu)

:jogo
    cls
    set /a jogadas+=1
    if %jogadas% gtr %maximo_jogadas% goto:calcular_pontuacao
    set /a jogadas_restantes=maximo_jogadas-jogadas

    call :exibir_jokenpo
    call :exibir_opcoes_jogador

    echo Jogadas restantes: %jogadas_restantes%
    echo.
    set /p escolha_jogador=Digite sua escolha: 
    
    set /a escolha_computador=%random% %% 5 + 1

    if %escolha_jogador% == 6 goto:menu
    if %escolha_jogador% lss 1 goto:jogo
    if %escolha_jogador% gtr 5 goto:jogo

    if %escolha_jogador% == 1 set escolha_jogador_txt=Pedra
    if %escolha_jogador% == 2 set escolha_jogador_txt=Papel
    if %escolha_jogador% == 3 set escolha_jogador_txt=Tesoura
    if %escolha_jogador% == 4 set escolha_jogador_txt=Lagarto
    if %escolha_jogador% == 5 set escolha_jogador_txt=Spock

    if %escolha_computador% == 1 set escolha_computador_txt=Pedra
    if %escolha_computador% == 2 set escolha_computador_txt=Papel
    if %escolha_computador% == 3 set escolha_computador_txt=Tesoura
    if %escolha_computador% == 4 set escolha_computador_txt=Lagarto
    if %escolha_computador% == 5 set escolha_computador_txt=Spock

    echo.
    echo Voce escolheu: %escolha_jogador_txt%
    echo O computador escolheu: %escolha_computador_txt%
    echo.

    if %escolha_jogador_txt% == %escolha_computador_txt% (
        echo Empate!
        set /a pontos+=1
    ) else if %escolha_jogador_txt% == Pedra (
        if %escolha_computador_txt% == Tesoura (
            echo Voce ganhou!
            set /a pontos+=3
        ) else if %escolha_computador_txt% == Lagarto (
            echo Voce ganhou!
            set /a pontos+=3
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Papel (
        if %escolha_computador_txt% == Pedra (
            echo Voce ganhou!
            set /a pontos+=3
        ) else if %escolha_computador_txt% == Spock (
            echo Voce ganhou!
            set /a pontos+=3
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Tesoura (
        if %escolha_computador_txt% == Papel (
            echo Voce ganhou!
            set /a pontos+=3
        ) else if %escolha_computador_txt% == Lagarto (
            echo Voce ganhou!
            set /a pontos+=3
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Lagarto (
        if %escolha_computador_txt% == Spock (
            echo Voce ganhou!
            set /a pontos+=3
        ) else if %escolha_computador_txt% == Papel (
            echo Voce ganhou!
            set /a pontos+=3
        ) else (
            echo Voce perdeu!
        )
    ) else if %escolha_jogador_txt% == Spock (
        if %escolha_computador_txt% == Tesoura (
            echo Voce ganhou!
            set /a pontos+=3
        ) else if %escolha_computador_txt% == Pedra (
            echo Voce ganhou!
            set /a pontos+=3
        ) else (
            echo Voce perdeu!
        )
    )

    echo.
    pause
    goto:jogo

:calcular_pontuacao
    echo %nome_jogador% - %pontos% >> %arquivo_ranking%
    cls
    color 0a
    echo.
    echo                   ( o o )
    echo   +----------oooO---(_)---Oooo----------+
    echo    %nome_jogador% sua pontuacao final foi: %pontos%
    echo.
    pause
    goto:menu

:trocar_jogador
    set nome_jogador=
    set pontos=0
    set jogadas=0
    goto:inicio

:exibir_regras
    cls
    echo.
    echo                           ( o o )
    echo        +-------------oooO---(_)---Oooo-------------+
    echo        -                                           -
    echo        -            Regras do Jo-Ken-Po            -
    echo        -                                           -
    echo        -   Pedra:   Empata com Pedra;              -
    echo        -            Ganha de tesoura e lagarto;    -
    echo        -            Perde de papel e Spock;        -
    echo        -                                           -
    echo        -   Papel:   Empata com papel;              -
    echo        -            Ganha de pedra e Spock;        -
    echo        -            Perde de tesoura e lagarto;    -
    echo        -                                           -
    echo        -   Tesoura: Empata com tesoura;            -
    echo        -            Ganha de lagarto e papel;      -
    echo        -            Perde de Pedra e Spock;        -
    echo        -                                           -
    echo        -   Lagarto: Empata com lagarto;            -
    echo        -            Ganha de papel e Spock;        -
    echo        -            Perde de pedra e tesoura;      -
    echo        -                                           -
    echo        -   Spock:   Empata com Spock;              -
    echo        -            Ganha de pedra e tesoura;      -
    echo        -            Perde de lagarto e papel.      -
    echo        -                                           -
    echo        +--------------------(_)--------------------+ 
    echo.
    pause
    goto:menu

:exibir_mensagem_opcao_invalida
    echo.
    echo --------------------
    echo   Opcao invalida!
    echo --------------------
    goto :eof

:exibir_jokenpo
    cls
    echo.
    echo                     Desenvolvido por Henrique
    echo             __            __  __                  ____      
    echo            / /___        / // _/___  ____        / __ \____       
    echo       __  / / __ \______/    /  __ \/ __ \______/ /_/ / __ \
    echo      / /_/ / /_/ /_____/ /\  \   __/ / / /_____/ ____/ /_/ /
    echo      \____/\____/     /_/  \__\___/_/ /_/     /_/    \____/   
    echo    ----------------------------------------------------------
    echo.
    goto :eof

:exibir_menu_principal
    cls
    echo                     ,,,                              
    echo                    (o o)                            
    echo         -------oOO--( )--OOo-------
    echo          Seja bem-vindo(a) %nome_jogador%!
    echo.
    echo -----------------------------------------------
    echo [1] Iniciar o jogo
    echo [2] Regras
    echo [3] Exibir ranking
    echo [4] Trocar de jogador
    echo [5] Sair
    echo -----------------------------------------------
    goto :eof

:exibir_voltar_menu_ou_jogar
    echo [1] VOLTAR AO MENU PRINCIPAL
    echo [2] JOGAR NOVAMENTE
    echo.
    set /p opcao_jogo=Escolha uma opcao: 

    if %opcao_jogo% == 1 goto :menu
    if %opcao_jogo% == 2 goto :jogo

    echo Opcao invalida!
    pause
    goto :exibir_voltar_menu_ou_jogar

:exibir_opcoes_jogador
    echo [1] Pedra
    echo [2] Papel
    echo [3] Tesoura
    echo [4] Lagarto
    echo [5] Spock
    echo [6] Voltar ao menu principal
    echo.
    goto :eof

:exibir_ranking
    cls
    echo.
    echo Ranking:
    echo.
    type %arquivo_ranking%
    echo.
    pause
    goto:menu
