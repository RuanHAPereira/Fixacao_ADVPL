#INCLUDE "totvs.ch"

/*/{Protheus.doc} Exercicio1
Faça um programa, com uma função que necessite de três argumentos, e que forneça a soma desses três argumentos.
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
