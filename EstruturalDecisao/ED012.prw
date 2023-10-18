#INCLUDE "TOTVS.ch"

/*/{Protheus.doc} ED012
Faça um programa para o cálculo de uma folha de pagamento, sabendo que os descontos são do Imposto de Renda, 
que depende do salário bruto (conforme tabela abaixo) e 3% para o Sindicato e que o FGTS corresponde a 11% do Salário Bruto, 
mas não é descontado (é a empresa que deposita). O Salário Líquido corresponde ao Salário Bruto menos os descontos. 
O programa deverá pedir ao usuário o valor da sua hora e a quantidade de horas trabalhadas no mês.
Desconto do IR:
Salário Bruto até 900 (inclusive) - isento
Salário Bruto até 1500 (inclusive) - desconto de 5%
Salário Bruto até 2500 (inclusive) - desconto de 10%
Salário Bruto acima de 2500 - desconto de 20% Imprima na tela as informações, dispostas conforme o exemplo abaixo. No exemplo o valor da hora é 5 e a quantidade de hora é 220.
        Salário Bruto: (5 * 220)        : R$ 1100,00
        (-) IR (5%)                     : R$   55,00  
        (-) INSS ( 10%)                 : R$  110,00
        FGTS (11%)                      : R$  121,00
        Total de descontos              : R$  165,00
        Salário Liquido                 : R$  935,00
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED012()

    local nValorHora    := 0
    local nHorasTrab    := 0
    local nSalarioBruto := 0
    local nIR   := 0
    local nINSS := 0
    local nFGTS := 0
    local nSindicato      := 0
    local nTotalDescontos := 0
    local nSalarioLiquido := 0

    nValorHora := val(FwInputBox("Digite o valor da hora: "))
    nHorasTrab := val(FwInputBox("Digite a quantidade de horas trabalhadas no mês: "))

    nSalarioBruto = nValorHora * nHorasTrab

    // Calcula o desconto do IR
    if nSalarioBruto <= 900
        nIR := 0
    elseif nSalarioBruto <= 1500
        nIR := nSalarioBruto * 0.05
    elseif nSalarioBruto <= 2500
        nIR := nSalarioBruto * 0.1
    else
        nIR := nSalarioBruto * 0.2
    endif

    nINSS := nSalarioBruto * 0.1

    nSindicato := nSalarioBruto * 0.03

    nFGTS := nSalarioBruto * 0.11

    nTotalDescontos := nIR + nINSS + nSindicato

    nSalarioLiquido := nSalarioBruto - nTotalDescontos

    //? Usei Alltrim(Str()) para formatar como o valor será exibido na mensagem
    FwalertSuccess("Salário Bruto: " + Alltrim(Str(nSalarioBruto)) + CRLF;
    + "(-) IR: " + Alltrim(Str(nIR)) + CRLF;
    + "(-) INSS: " + Alltrim(Str(nINSS)) + CRLF;
    + "FGTS: " + Alltrim(Str(nFGTS)) + CRLF;
    + "Total de descontos: " + Alltrim(Str(nTotalDescontos)) + CRLF;
    + "Salário Liquido: " + Alltrim(Str(nSalarioLiquido)))

return
