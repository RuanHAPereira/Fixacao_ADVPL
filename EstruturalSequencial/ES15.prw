#include 'Totvs.ch'

user function ES15()

    local nValorHora, nHoraTrab := 0
    local nSalarioBruto, nSalarioLiquido := 0
    local nDescINSS, nDescIR, nDescSindicato := 0

    nValorHora := val(FwInputBox("Informe o valor da hora trabalhada: "))

    nHoraTrab := val(FwInputBox("Informe as horas trabalhadas no mês: "))

    nSalarioBruto = nValorHora * nHoraTrab


    nDescIR = nSalarioBruto * 0.11 
    nDescINSS = nSalarioBruto * 0.08 
    nDescSindicato = nSalarioBruto * 0.05  

    nSalarioLiquido = nDescINSS - nDescIR - nDescSindicato + nSalarioBruto


    FwAlertInfo("Segue abaixo informações sobre seu salario:" + CRLF;
    + "+ Salario Bruto: R$" + Alltrim(Str(nSalarioBruto)) + CRLF + "- IR: R$ " + Alltrim(Str(nDescIR)) + CRLF;
    + "- INSS: R$ " + Alltrim(Str(nDescINSS)) + CRLF + "- Sindicato: R$ " + Alltrim(Str(nDescSindicato)) + CRLF;
    + "= Salario Liquido: R$ " + Alltrim(Str(nSalarioLiquido)))

return
