#include 'Totvs.ch'

user function ES008()

    local nHora, nHoraTrb,nSalario := ""
    local nMes := ''

    nHora := VAL(FwInputBox("Quanto voc� ganha por hora?", nHora))
    nHoraTrb := Val(FwInputBox("E quantas horas trabalhadas por semana?", nHoraTrb))
    nMes := Val(FwInputBox("Quantas semanas tem o mes atual?", nMes))

    FwAlertInfo("Vamos calcular o seu salario!")

    nSalario = (nHora * nHoraTrb) * nMes

    FwAlertInfo("Seu salario no fim do m�s ser�: " + Alltrim(Str(nSalario) + "R$"))

return
