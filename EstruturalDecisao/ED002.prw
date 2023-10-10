#include 'Totvs.ch'

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
