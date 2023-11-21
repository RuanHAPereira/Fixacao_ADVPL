#include 'Totvs.ch'

/*/{Protheus.doc} ER051
Faça um programa que mostre os N termos da série S = 1/1 + 2/3 + 3/5 + 4/7 + 5/9 + ... + N/M.
Imprima no final a soma da série.
@type function
@author Ruan Henrique
@since 11/21/2023
/*/

user function ER051()

    local nTermos      := 0
    local nCont        := 0
    local nNumerador   := 1
    local nDenominador := 1
    local nSoma        := 0

    nTermos := Val(FwInputBox("Digite o número de termos da série: "))

    for nCont := 1 to nTermos
        nSoma := nSoma + nNumerador / nDenominador
        nNumerador := nNumerador + 1
        nDenominador := nDenominador + 2
    next

    // Exibir os N termos da série
    FwAlertInfo("Termos da série S:")
    for nCont := 1 to nTermos
        FwAlertInfo(AllTrim(Str(nCont)) + ": " + AllTrim(Str(nCont)) + "/" + AllTrim(Str(nCont * 2 - 1)))
    next

    FwAlertInfo("Soma da série S: " + AllTrim(Str(nSoma)))

return
