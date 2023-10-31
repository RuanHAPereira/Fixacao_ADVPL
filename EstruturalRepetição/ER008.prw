#include 'Totvs.ch'

/*/{Protheus.doc} ER008
Fa�a um programa que leia 5 n�meros e informe a soma e a m�dia dos n�meros.
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
        nNum := val(FwInputBox("Informe o n�mero: "))
        nSoma += nNum
    next

    nMedia := nSoma / 5

    FwAlertInfo("Soma dos n�meros: " + alltrim(str(nSoma)))
    FwAlertInfo("M�dia dos n�meros: " + alltrim(str(nMedia)))

return


