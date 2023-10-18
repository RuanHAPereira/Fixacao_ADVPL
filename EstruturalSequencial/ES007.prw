#include 'Totvs.ch'

/*/{Protheus.doc} ES007
Faça um Programa que calcule a área de um quadrado, em seguida mostre o dobro desta área para o usuário.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES007()

    local nArea   := 0 
    local nLado   := 0
    local nDobroA := 0

    nLado := Val(FwinputBox("Digite o valor do lado do quadarado: ", nLado))

    nArea = nLado * nLado

    nDobroA = nArea * 2

    FwAlertInfo("O dobro da area do quadrado é: " + Alltrim(Str(nDobroA)))

return
