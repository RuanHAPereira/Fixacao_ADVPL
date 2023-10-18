#include 'Totvs.ch'

/*/{Protheus.doc} ED002
Fa�a um Programa que pe�a um valor e mostre na tela se o valor � positivo ou negativo.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED002()

    local nValor := 0

    nValor := val(FwInputBox("Informe um valor: "))

    if nValor > 0
        FwAlertInfo("O valor digitado � positivo!!")
    elseif nValor < 0
        FwAlertInfo("O valor digitado � negativo!!")
    else
        FwAlertInfo("O valor informado � ZERO")
    ENDIF

return
