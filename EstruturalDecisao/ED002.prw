#include 'Totvs.ch'

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
