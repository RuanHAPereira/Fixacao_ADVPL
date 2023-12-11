#INCLUDE "totvs.ch"

/*/{Protheus.doc} Exercicio1
Fa�a um programa, com uma fun��o que necessite de tr�s argumentos, e que forne�a a soma desses tr�s argumentos.
@type function
@author Ruan Henrique
@since 12/11/2023
/*/
User Function FUN03()
    Local nX := 1
    Local nY := 0
    local n  := 0

    do While nX <= n
        nY := 0
        While nY < nX
            FwAlertInfo(AllTrim(Str(nX)), 0)
            nY++
        enddo

        nX++
        FwAlertInfo("", 0)  // Adiciona uma nova linha
    enddo

Return
