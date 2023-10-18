#include 'Totvs.ch'

user function ED011()

    local nSalario       := 0
    local nAumentoSal    := 0
    local nValorAumento  := 0
    local nSalarioAjuste := 0

    nSalario := val(FwInputBox("Digite o salário do colaborador: "))

    if nSalario <= 280
        nAumentoSal := 20
    elseif nSalario <= 700
        nAumentoSal := 15
    elseif nSalario <= 1500
        nAumentoSal := 10
    else
        nAumentoSal := 5
    endif

    nValorAumento  := nSalario * (nAumentoSal / 100)
    nSalarioAjuste := nSalario + nValorAumento

    FwAlertSuccess("Salário antes do reajuste: " + Alltrim(Str(nSalario)) + CRLF;
    + "Percentual de aumento aplicado: " + Alltrim(Str(nAumentoSal)) + "%" + CRLF;
    + "Valor do aumento: " + Alltrim(Str(nValorAumento)) + CRLF;
    + "Novo salário após o aumento: " + Alltrim(Str(nSalarioAjuste)))
     
return
