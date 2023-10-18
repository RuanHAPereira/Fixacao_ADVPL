#include 'Totvs.ch'

/*/{Protheus.doc} ES15
Fa�a um Programa que pergunte quanto voc� ganha por hora e o n�mero de horas trabalhadas no m�s.
Calcule e mostre o total do seu sal�rio no referido m�s, sabendo-se que s�o descontados 11% para o Imposto de Renda,
8% para o INSS e 5% para o sindicato, fa�a um programa que nos d�:
sal�rio bruto.
quanto pagou ao INSS.
quanto pagou ao sindicato.
o sal�rio l�quido.
calcule os descontos e o sal�rio l�quido, conforme a tabela abaixo:
+ Sal�rio Bruto : R$
- IR (11%) : R$
- INSS (8%) : R$
- Sindicato ( 5%) : R$
= Sal�rio Liquido : R$
Obs.: Sal�rio Bruto - Descontos = Sal�rio L�quido.
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

    nHoraTrab := val(FwInputBox("Informe as horas trabalhadas no m�s: "))

    nSalarioBruto = nValorHora * nHoraTrab

    nDescIR = nSalarioBruto * 0.11 
    nDescINSS = nSalarioBruto * 0.08 
    nDescSindicato = nSalarioBruto * 0.05  

    nSalarioLiquido = nDescINSS - nDescIR - nDescSindicato + nSalarioBruto


    FwAlertInfo("Segue abaixo informa��es sobre seu salario:" + CRLF;
    + "+ Salario Bruto: R$" + Alltrim(Str(nSalarioBruto)) + CRLF + "- IR: R$ " + Alltrim(Str(nDescIR)) + CRLF;
    + "- INSS: R$ " + Alltrim(Str(nDescINSS)) + CRLF + "- Sindicato: R$ " + Alltrim(Str(nDescSindicato)) + CRLF;
    + "= Salario Liquido: R$ " + Alltrim(Str(nSalarioLiquido)))

return
