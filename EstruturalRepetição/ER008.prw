#include 'Totvs.ch'

/*/{Protheus.doc} ER008
Faça um programa que leia 5 números e informe a soma e a média dos números.
@type function
@author Ruan Henrique
@since 10/30/2023
/*/

user function ER008()

    local nSoma  := 0
    local nCont  := 1
    local nNum   := 0
    local nMedia := 0

    for nCont := 1 to 5
        nNum := val(FwInputBox("Informe o número: "))
        nSoma += nNum
    next

    nMedia := nSoma / 5

    FwAlertInfo("Soma dos números: " + alltrim(str(nSoma)))
    FwAlertInfo("Média dos números: " + alltrim(str(nMedia)))

return


