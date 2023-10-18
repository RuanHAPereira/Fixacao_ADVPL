#include 'Totvs.ch'

/*/{Protheus.doc} ED011
As Organizações Tabajara resolveram dar um aumento de salário aos seus colaboradores e lhe contraram para desenvolver o programa que 
calculará os reajustes.
Faça um programa que recebe o salário de um colaborador e o reajuste segundo o seguinte critério, baseado no salário atual:
salários até R$ 280,00 (incluindo) : aumento de 20%
salários entre R$ 280,00 e R$ 700,00 : aumento de 15%
salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%
salários de R$ 1500,00 em diante : aumento de 5% Após o aumento ser realizado, informe na tela:
o salário antes do reajuste;
o percentual de aumento aplicado;
o valor do aumento;
o novo salário, após o aumento.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

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
