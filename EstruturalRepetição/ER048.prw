#include 'Totvs.ch'

/*/{Protheus.doc} ER048
Faça um programa que peça um número inteiro positivo e em seguida mostre este número invertido.
Exemplo:
12376489
=> 98467321
@type function
@author Ruan Henrique
@since 11/20/2023
/*/

user function ER048()

    local cNumero        := ""
    local cNumInvert     := ""
    local lRet           := .T.
    local nI := 0

    cNumero := FwInputBox("Digite um número inteiro positivo: ")

    if Val(cNumero) < 0
        FwAlertError("Por favor, digite um número inteiro positivo.")
        lRet := .F.
    else
        // Inverter o número manualmente
        for nI := Len(cNumero) to 1 step -1
            cNumInvert += SubStr(cNumero, nI, 1)
        next

        FwAlertInfo("Número invertido: " + cNumInvert)
    endif

return lRet


