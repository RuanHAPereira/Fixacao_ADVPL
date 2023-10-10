#include 'Totvs.ch'

user function ED001()

    local nNum1, nNum2 := 0

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
