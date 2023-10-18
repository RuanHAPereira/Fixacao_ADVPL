#INCLUDE "TOTVS.ch"

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
