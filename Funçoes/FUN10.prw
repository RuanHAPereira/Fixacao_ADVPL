#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN10
Jogo de Craps. Faça um programa de implemente um jogo de Craps. 
O jogador lança um par de dados, obtendo um valor entre 2 e 12. 
Se, na primeira jogada, você tirar 7 ou 11, você um "natural" e ganhou. 
Se você tirar 2, 3 ou 12 na primeira jogada, isto é chamado de "craps" e você perdeu. 
Se, na primeira jogada, você fez um 4, 5, 6, 8, 9 ou 10,este é seu "Ponto". 
Seu objetivo agora é continuar jogando os dados até tirar este número novamente. 
Você perde, no entanto, se tirar um 7 antes de tirar este Ponto novamente.
@type function
@author Ruan Henrique
@since 12/21/2023
/*/

user function FUN10()

    local aArea := GetArea()
    //? Inicializa o jogo de Craps
    Craps()

    RestArea(aArea)
return

static function Craps()

    local nProxJog    := 0
    local nPrimJogada := 0

    //? Inicia o jogo de Craps
    FwAlertInfo("Bem-vindo ao jogo de Craps!")
    FwAlertInfo("Vamos jogar os dados!")
    //? Faz a primeira jogada
    nPrimJogada := JogarDados()

    //? Avalia o resultado da primeira jogada
    if nPrimJogada == 7 .or. nPrimJogada == 11
        FwAlertInfo("Você tirou " + AllTrim(Str(nPrimJogada)) + ". Você ganhou!")
    elseif nPrimJogada == 2 .or. nPrimJogada == 3 .or. nPrimJogada == 12
        FwAlertInfo("Você tirou " + AllTrim(Str(nPrimJogada)) + ". Você perdeu!")
    else
        FwAlertInfo("Você tirou " + AllTrim(Str(nPrimJogada)) + ". Seu Ponto é " +;
        AllTrim(Str(nPrimJogada)) + ". Continue jogando...")

        //? Continua jogando até ganhar ou perder

        do while nProxJog <> nPrimJogada .and. nProxJog <> 7
            nProxJog := JogarDados()

            if nProxJog == nPrimJogada
                FwAlertInfo("Você tirou o Ponto novamente. Você ganhou!")
            elseif nProxJog == 7
                FwAlertInfo("Você tirou 7. Você perdeu!")
            endif
        enddo

    endif

    FwAlertInfo("Fim do jogo de Craps!")

return

static function JogarDados()

    local nDado1 := Randomize(1, 6)
    local nDado2 := Randomize(1, 6)
    local nSomaDados := nDado1 + nDado2

    FwAlertInfo("Você tirou " + AllTrim(Str(nDado1)) + " e " + AllTrim(Str(nDado2)) + ". Soma: " + AllTrim(Str(nSomaDados)))

return(nSomaDados)

