#include 'Totvs.ch'

/*/{Protheus.doc} ED001
Fa�a um Programa que pe�a dois n�meros e imprima o maior deles.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED001()

    local nNum1 := 0
    local nNum2 := 0

    nNum1 := val(FwInputBox("Informe o primeiro n�mero: "))

    nNum2 := val(FwInputBox("Informe o segundo n�mero: "))

    if nNum1 > nNum2
        FwAlertInfo("O numero maior �: " + Alltrim(Str(nNum1)))
    elseif nNum2 > nNum1
        FwAlertInfo("O numero maior �: " + Alltrim(Str(nNum2)))
    else
        FwAlertInfo("Os numeros s�o iguais.")
    endif

return
