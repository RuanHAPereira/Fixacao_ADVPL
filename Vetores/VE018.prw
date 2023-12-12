#include "totvs.ch"

User Function VE018()

    local aVotos         := {}
    local aResultados    := {}
    local nTotalVotos    := 0
    local nVoto          := 0
    local nCont          := 0
    local nMelhorJogador := 0
    local nMelhorVotos   := 0
    local nPercentual    := 0
    local cResultado     := ""

    Do While .T.
        nVoto := Val(FwInputBox("Número do jogador (0=fim): "))

        If nVoto == 0
            Exit
        EndIf

        nCont := ASCAN(aVotos, nVoto, 1, 1)

        If nCont > 0
            //? Se encontrou, incrementa os votos
            aVotos[nCont][2]++
        Else
            //? Se não encontrou, adiciona ao array bidimensional
            AAdd(aVotos, {nVoto, 1})
        EndIf

        For nCont := 1 To 23
            AAdd(aResultados, 0)
        Next

        nTotalVotos++
    EndDo

    For nCont := 1 To Len(aVotos)
        aResultados[aVotos[nCont][1]] += aVotos[nCont][2]
    Next

    cResultado += "Resultado da votação:" + CRLF + CRLF
    cResultado += "Foram computados " + AllTrim(Str(nTotalVotos)) + " votos." + CRLF + CRLF

    // Exibe os votos e percentuais de cada jogador
    For nCont := 1 To Len(aResultados)
        If aResultados[nCont] > 0
            nPercentual := (aResultados[nCont] / nTotalVotos) * 100
            cResultado += "Jogador " + AllTrim(Str(nCont)) + " recebeu " + AllTrim(Str(aResultados[nCont])) + " votos, correspondendo a " + Str(nPercentual, 6, 1) + "% do total de votos." + CRLF;

            // Verifica o melhor jogador
            If aResultados[nCont] > nMelhorVotos
                nMelhorJogador := nCont
                nMelhorVotos := aResultados[nCont]
            EndIf
        EndIf
    Next

    // Exibe o resultado do melhor jogador
    cResultado += CRLF + "O melhor jogador foi o número " + AllTrim(Str(nMelhorJogador)) + ", com " +;
                  AllTrim(Str(nMelhorVotos)) + " votos, correspondendo a " + Str(nPercentual, 6, 1) + "% do total de votos."

    FwAlertInfo(cResultado)

Return
