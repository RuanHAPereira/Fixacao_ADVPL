#include 'Totvs.ch'

/*/{Protheus.doc} ES005
Fa�a um Programa que converta metros para cent�metros.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES005()

    local nMetro      := 0
    local nCentimetro := 100
    local nConvert    := 0

    nMetro := Val(FwInputBox("Informe o Valor em metros: ", nMetro))

    fwalertinfo("Vamos converter o valor para centemetros!!")

    nConvert = nCentimetro * nMetro

    fwalertinfo("O valor convertido �: " + Alltrim(STR(nConvert)) + " centimetros")
return
