#include 'Totvs.ch'

/*/{Protheus.doc} ES006
Fa�a um Programa que pe�a o raio de um c�rculo, calcule e mostre sua �rea.
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

    FwAlertSuccess("A area deste circulo �: " + alltrim(Str(nArea) + "metros."))

return
