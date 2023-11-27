#include 'Totvs.ch'

/*/{Protheus.doc} ER051
Fa�a um programa que mostre os N termos da s�rie S = 1/1 + 2/3 + 3/5 + 4/7 + 5/9 + ... + N/M.
Imprima no final a soma da s�rie.
@type function
@author Ruan Henrique
@since 11/21/2023
/*/

user function ER051()

    local nTermos      := 0
    local nCont        := 0
    local nNumerador   := 1
    local nDenomin     := 1
    local nSoma        := 0
    local cMsg         := ""

    nTermos := Val(FwInputBox("Digite o n�mero de termos da s�rie: "))

    for nCont := 1 to nTermos
        nSoma := nSoma + (nNumerador / nDenomin)

        cMsg += AllTrim(Str(nCont)) + ": " + AllTrim(Str(nNumerador)) + "/" + AllTrim(Str(nDenomin))

        if nCont < nTermos
            cMsg += " + "
        endif

        nNumerador := nNumerador + 1
        nDenomin := nDenomin + 2
    next

    FwAlertInfo("Termos da s�rie S:" + cMsg)
    FwAlertInfo("Soma da s�rie S: " + AllTrim(Str(nSoma,4,2)))

return
