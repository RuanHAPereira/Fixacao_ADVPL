#include 'Totvs.ch'

user function ES006()

    local nRaio := ''
    local nArea := 0

    nRaio := Val(FwInputBox("Insira o valor de um circulo, em metros: ", nRaio))

    nArea = nRaio/2

    FwAlertInfo("Calculando...")

    FwAlertSuccess("A area deste circulo é: " + alltrim(Str(nArea) + "metros."))

return
