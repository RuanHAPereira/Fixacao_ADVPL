#include 'Totvs.ch'

/*/{Protheus.doc} ER050
Sendo H = 1 + 1/2 + 1/3 + 1/4 + ... + 1/N, fa�a um programa que calcule o valor de H com N termos.
@type function
@author Ruan Henrique
@since 11/21/2023
/*/

user function ER050()

    local nTermos := 0
    local nCont   := 0
    local nSoma   := 0
    local cMsg    := ""

    nTermos := Val(FwInputBox("Digite o n�mero de termos (N) da s�rie: "))

    for nCont := 1 to nTermos
        nSoma := nSoma + 1 / nCont

        cMsg += "1/" + AllTrim(Str(nCont))

        if nCont < nTermos
            cMsg += " + "
        endif
    next

    fwalertinfo("Sendo H = " + cMsg + ", o valor de H com " + AllTrim(Str(nTermos)) + " termos �: " + AllTrim(Str(nSoma)))

return
