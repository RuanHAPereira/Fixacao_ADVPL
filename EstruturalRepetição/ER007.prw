#include 'Totvs.ch'

/*/{Protheus.doc} ER007
Fa�a um programa que leia 5 n�meros e informe o maior n�mero.
@type function
@author Ruan Henrique
@since 10/30/2023
/*/

user function ER007()

    local nNumero := 0
    local nMaior  := 0
    local nCont   := 1

    nMaior := nNumero

    for nCont := 1 to 5
        nNumero := val(FwInputBox("Informe um n�mero : "))
        if nNumero > nMaior
            nMaior := nNumero
        endif
    next

    FwAlertInfo("O maior n�mero �: " + alltrim(str(nMaior)))

return
