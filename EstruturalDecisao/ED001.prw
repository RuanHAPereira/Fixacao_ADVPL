#include 'Totvs.ch'

user function ED001()

    local nNum1, nNum2 := 0

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
