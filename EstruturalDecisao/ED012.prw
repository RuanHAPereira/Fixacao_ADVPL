#INCLUDE "TOTVS.ch"

/*/{Protheus.doc} ED012
Fa�a um programa para o c�lculo de uma folha de pagamento, sabendo que os descontos s�o do Imposto de Renda, 
que depende do sal�rio bruto (conforme tabela abaixo) e 3% para o Sindicato e que o FGTS corresponde a 11% do Sal�rio Bruto, 
mas n�o � descontado (� a empresa que deposita). O Sal�rio L�quido corresponde ao Sal�rio Bruto menos os descontos. 
O programa dever� pedir ao usu�rio o valor da sua hora e a quantidade de horas trabalhadas no m�s.
Desconto do IR:
Sal�rio Bruto at� 900 (inclusive) - isento
Sal�rio Bruto at� 1500 (inclusive) - desconto de 5%
Sal�rio Bruto at� 2500 (inclusive) - desconto de 10%
Sal�rio Bruto acima de 2500 - desconto de 20% Imprima na tela as informa��es, dispostas conforme o exemplo abaixo. No exemplo o valor da hora � 5 e a quantidade de hora � 220.
        Sal�rio Bruto: (5 * 220)        : R$ 1100,00
        (-) IR (5%)                     : R$   55,00  
        (-) INSS ( 10%)                 : R$  110,00
        FGTS (11%)                      : R$  121,00
        Total de descontos              : R$  165,00
        Sal�rio Liquido                 : R$  935,00
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
    nHorasTrab := val(FwInputBox("Digite a quantidade de horas trabalhadas no m�s: "))

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

    //? Usei Alltrim(Str()) para formatar como o valor ser� exibido na mensagem
    FwalertSuccess("Sal�rio Bruto: " + Alltrim(Str(nSalarioBruto)) + CRLF;
    + "(-) IR: " + Alltrim(Str(nIR)) + CRLF;
    + "(-) INSS: " + Alltrim(Str(nINSS)) + CRLF;
    + "FGTS: " + Alltrim(Str(nFGTS)) + CRLF;
    + "Total de descontos: " + Alltrim(Str(nTotalDescontos)) + CRLF;
    + "Sal�rio Liquido: " + Alltrim(Str(nSalarioLiquido)))

return
