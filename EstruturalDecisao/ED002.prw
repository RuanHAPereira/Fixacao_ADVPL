#include 'Totvs.ch'

/*/{Protheus.doc} ED002
Faça um Programa que peça um valor e mostre na tela se o valor é positivo ou negativo.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED002()

    local nValor := 0

    nValor := val(FwInputBox("Informe um valor: "))

    if nValor > 0
        FwAlertInfo("O valor digitado é positivo!!")
    elseif nValor < 0
        FwAlertInfo("O valor digitado é negativo!!")
    else
        FwAlertInfo("O valor informado é ZERO")
    ENDIF

return
