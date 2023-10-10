#include 'Totvs.ch'

user function ES005()

    local nMetro := ""
    local nCentimetro := 100
    local nConvert := 0

    nMetro := Val(FwInputBox("Informe o Valor em metros: ", nMetro))

    fwalertinfo("Vamos converter o valor para centemetros!!")

    nConvert = nCentimetro * nMetro

    fwalertinfo("O valor convertido é: " + Alltrim(STR(nConvert)) + " centimetros")
return
