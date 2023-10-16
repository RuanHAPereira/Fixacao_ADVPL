#include 'Totvs.ch'

user function ES008()

    local nHora    := 0 
    local nHoraTrb := 0
    local nSalario := 0
    local nMes     := 0

    nHora := VAL(FwInputBox("Quanto você ganha por hora?", nHora))
    nHoraTrb := Val(FwInputBox("E quantas horas trabalhadas por semana?", nHoraTrb))
    nMes := Val(FwInputBox("Quantas semanas tem o mes atual?", nMes))

    FwAlertInfo("Vamos calcular o seu salario!")

    nSalario = (nHora * nHoraTrb) * nMes

    FwAlertInfo("Seu salario no fim do mês será: " + Alltrim(Str(nSalario) + "R$"))

return
