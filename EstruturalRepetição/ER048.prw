#include 'Totvs.ch'

/*/{Protheus.doc} ER048
Fa�a um programa que pe�a um n�mero inteiro positivo e em seguida mostre este n�mero invertido.
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

    cNumero := FwInputBox("Digite um n�mero inteiro positivo: ")

    if Val(cNumero) < 0
        FwAlertError("Por favor, digite um n�mero inteiro positivo.")
        lRet := .F.
    else
        // Inverter o n�mero manualmente
        for nI := Len(cNumero) to 1 step -1
            cNumInvert += SubStr(cNumero, nI, 1)
        next

        FwAlertInfo("N�mero invertido: " + cNumInvert)
    endif

return lRet


