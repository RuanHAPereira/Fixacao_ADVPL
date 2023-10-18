#include 'Totvs.ch'

/*/{Protheus.doc} ES008
Fa�a um Programa que pergunte quanto voc� ganha por hora e o n�mero de horas trabalhadas no m�s.
Calcule e mostre o total do seu sal�rio no referido m�s.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES008()

    local nHora    := 0 
    local nHoraTrb := 0
    local nSalario := 0
    local nMes     := 0

    nHora := VAL(FwInputBox("Quanto voc� ganha por hora?", nHora))
    nHoraTrb := Val(FwInputBox("E quantas horas trabalhadas por semana?", nHoraTrb))
    nMes := Val(FwInputBox("Quantas semanas tem o mes atual?", nMes))

    FwAlertInfo("Vamos calcular o seu salario!")

    nSalario = (nHora * nHoraTrb) * nMes

    FwAlertInfo("Seu salario no fim do m�s ser�: " + Alltrim(Str(nSalario) + "R$"))

return
