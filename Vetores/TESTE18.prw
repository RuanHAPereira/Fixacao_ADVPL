#INCLUDE "totvs.ch"

User Function TESTE18()

    local aVotos         := {}
    local aResultados    := {}
    local nTotalVotos    := 0
    local nVoto          := 0
    local nCont          := 0
    local nMelhorJogador := 0
    local nMelhorVotos   := 0
    local nPercentual    := 0
    local aResult        := 0
    local cResultado     := ""

    Do While .T.
        nVoto := Val(FwInputBox("Número do jogador (0=fim): "))

        If nVoto == 0
            Exit
        EndIf

        // Verifica se o voto é válido (entre 1 e 23)
        If nVoto >= 1 .And. nVoto <= 23
            AAdd(aVotos, nVoto)
            nTotalVotos++
        Else
            FwAlertInfo("Informe um valor entre 1 e 23 ou 0 para sair!")
        EndIf
    EndDo

    // Inicializa o array de resultados
    For nCont := 1 To 23
        AAdd(aResultados, 0)
    Next

    // Contabiliza os votos de cada jogador
    For nCont := 1 To Len(aVotos)
        aResultados[aVotos[nCont]]++
    Next

    // Monta o resultado da votação
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
                nMelhorVotos := aResult
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
