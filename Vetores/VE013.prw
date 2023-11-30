#include 'totvs.ch'

/*/{Protheus.doc} VE013
Fa�a um programa que receba a temperatura m�dia de cada m�s do ano e armazene-as em uma lista.
Ap�s isso, calcule a m�dia anual das temperaturas e mostre todas as temperaturas acima da m�dia anual,
e em que m�s elas ocorreram (mostrar o m�s por extenso: 1 � Janeiro, 2 � Fevereiro, . . . ).
@type function
@author Seu Nome
@since 11/25/2023
/*/

#include 'totvs.ch'

/*/{Protheus.doc} VE013
Fa�a um programa que receba a temperatura m�dia de cada m�s do ano e armazene-as em uma lista.
Ap�s isso, calcule a m�dia anual das temperaturas e mostre todas as temperaturas acima da m�dia anual,
e em que m�s elas ocorreram (mostrar o m�s por extenso: 1 � Janeiro, 2 � Fevereiro, . . . ).
@type function
@author Seu Nome
@since 11/25/2023
/*/

user function VE013()

    local aTemperaturas := {}
    local aMeses        := {"Janeiro", "Fevereiro", "Mar�o", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    local nCont         := 0
    local nSoma         := 0
    local nMediaAnual   := 0
    local cMsg          := ''

    for nCont := 1 to Len(aMeses)
        nTemperatura := Val(FwInputBox("Digite a temperatura m�dia de " + aMeses[nCont] + ": "))
        AAdd(aTemperaturas, nTemperatura)
        nSoma := nSoma + nTemperatura
    next

    if Len(aTemperaturas) > 0
        nMediaAnual := nSoma / Len(aTemperaturas)
    endif

    for nCont := 1 to Len(aTemperaturas)
        if aTemperaturas[nCont] > nMediaAnual
            cMsg += aMeses[nCont] + ": " + AllTrim(Str(aTemperaturas[nCont])) + CRLF
        endif
    next

    FwAlertInfo("Temperaturas acima da m�dia anual:" + CRLF + cMsg)
    FwAlertInfo("M�dia anual: " + AllTrim(Str(nMediaAnual,4,1)) + "�C")

return
