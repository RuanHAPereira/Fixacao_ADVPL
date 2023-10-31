#include 'Totvs.ch'

/*/{Protheus.doc} ER007
Faça um programa que leia 5 números e informe o maior número.
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
        nNumero := val(FwInputBox("Informe um número : "))
        if nNumero > nMaior
            nMaior := nNumero
        endif
    next

    FwAlertInfo("O maior número é: " + alltrim(str(nMaior)))

return
