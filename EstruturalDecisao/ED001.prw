#include 'Totvs.ch'

/*/{Protheus.doc} ED001
Faça um Programa que peça dois números e imprima o maior deles.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED001()

    local nNum1 := 0
    local nNum2 := 0

    nNum1 := val(FwInputBox("Informe o primeiro número: "))

    nNum2 := val(FwInputBox("Informe o segundo número: "))

    if nNum1 > nNum2
        FwAlertInfo("O numero maior é: " + Alltrim(Str(nNum1)))
    elseif nNum2 > nNum1
        FwAlertInfo("O numero maior é: " + Alltrim(Str(nNum2)))
    else
        FwAlertInfo("Os numeros são iguais.")
    endif

return
