#include 'Totvs.ch'

user function ES007()

    local nArea   := 0 
    local nLado   := 0
    local nDobroA := 0

    nLado := Val(FwinputBox("Digite o valor do lado do quadarado: ", nLado))

    nArea = nLado * nLado

    nDobroA = nArea * 2

    FwAlertInfo("O dobro da area do quadrado é: " + Alltrim(Str(nDobroA)))

return
