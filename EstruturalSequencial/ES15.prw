#include 'Totvs.ch'

/*/{Protheus.doc} ES15
Faça um Programa que pergunte quanto você ganha por hora e o número de horas trabalhadas no mês.
Calcule e mostre o total do seu salário no referido mês, sabendo-se que são descontados 11% para o Imposto de Renda,
8% para o INSS e 5% para o sindicato, faça um programa que nos dê:
salário bruto.
quanto pagou ao INSS.
quanto pagou ao sindicato.
o salário líquido.
calcule os descontos e o salário líquido, conforme a tabela abaixo:
+ Salário Bruto : R$
- IR (11%) : R$
- INSS (8%) : R$
- Sindicato ( 5%) : R$
= Salário Liquido : R$
Obs.: Salário Bruto - Descontos = Salário Líquido.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES15()

    local nValorHora      := 0
    local nHoraTrab       := 0
    local nSalarioBruto   := 0 
    local nSalarioLiquido := 0
    local nDescINSS       := 0 
    local nDescIR         := 0
    local nDescSindicato  := 0

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
