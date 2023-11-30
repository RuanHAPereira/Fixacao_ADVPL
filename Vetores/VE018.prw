#include "totvs.ch"
/*/{Protheus.doc} VE018
Uma grande emissora de televis�o quer fazer uma enquete entre os seus telespectadores para saber qual o
 melhor jogador ap�s cada jogo.
Para isto, faz-se necess�rio o desenvolvimento de um programa, que ser� utilizado pelas telefonistas, 
para a computa��o dos votos.
Sua equipe foi contratada para desenvolver este programa, utilizando a linguagem de programa��o ADVPL.
@type function
@author Seu Nome
@since 11/30/2023
/*/

user function VE018()

    local aVotos      := {}   // Array para armazenar os votos de cada jogador
    local nTotalVotos := 0  // Contador total de votos
    local nCamisa     := 0
    local nCont       := 0
    local lEncontrado := .F.

    do while .T.
        nCamisa := Val(FwInputBox("N�mero da camisa do jogador (0 = fim): "))

        if nCamisa == 0
            exit
        endif

        if nCamisa >= 1 .and. nCamisa <= 23
            // Verifica se j� existe voto para o jogador
            for nCont := 1 to Len(aVotos)
                if aVotos[nCont][1] == nCamisa
                    aVotos[nCont][2]++
                    lEncontrado := .T.
                    nTotalVotos++
                    exit
                endif
            next

            // Se n�o encontrou, adiciona um novo voto
            if !lEncontrado
                AAdd(aVotos, {nCamisa, 1})
                nTotalVotos++
            endif
        else
            FwAlertInfo("N�mero da camisa inv�lido. Tente novamente!")
        endif
    enddo

    // Exibi��o dos resultados
    FwAlertInfo("Resultado da vota��o:" + CRLF + Enquete(aVotos, nTotalVotos))

return


static function Enquete(aVotos, nTotalVotos)

    local nMelhorJogador := 1
    local nMelhorVotos := aVotos[1][2]
    local nPercentual := 0
    local nJogador := 0
    local cResult := "Foram computados " + AllTrim(Str(nTotalVotos)) + " votos." + CRLF + CRLF + "Jogadores que receberam votos:" + CRLF

    for nJogador := 1 to Len(aVotos)
        if aVotos[nJogador][2] > 0
            nPercentual := (aVotos[nJogador][2] / nTotalVotos) * 100
            cResult += "Camisa " + AllTrim(Str(aVotos[nJogador][1])) + ": " + AllTrim(Str(aVotos[nJogador][2])) + " votos, " + AllTrim(Str(nPercentual, 6, 2)) + "%" + CRLF
        endif
    next

    // Encontrar o melhor jogador
    for nJogador := 2 to Len(aVotos)
        if aVotos[nJogador][2] > nMelhorVotos
            nMelhorJogador := nJogador
            nMelhorVotos := aVotos[nJogador][2]
        endif
    next

    cResult += CRLF + "O melhor jogador foi o jogador de camisa " + AllTrim(Str(aVotos[nMelhorJogador][1])) +;
    ", com " + AllTrim(Str(nMelhorVotos)) + " votos, correspondendo a " + AllTrim(Str((nMelhorVotos / nTotalVotos) * 100, 6, 2)) +;
    "% do total de votos."

return cResult

