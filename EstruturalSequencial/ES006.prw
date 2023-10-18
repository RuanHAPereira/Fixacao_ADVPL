#include 'Totvs.ch'

/*/{Protheus.doc} ES006
Faça um Programa que peça o raio de um círculo, calcule e mostre sua área.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES006()

    local nRaio := 0
    local nArea := 0

    nRaio := Val(FwInputBox("Insira o valor de um circulo, em metros: ", nRaio))

    nArea = nRaio/2

    FwAlertInfo("Calculando...")

    FwAlertSuccess("A area deste circulo é: " + alltrim(Str(nArea) + "metros."))

return
