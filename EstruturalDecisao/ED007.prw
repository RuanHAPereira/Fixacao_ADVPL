#include 'Totvs.ch'

/*/{Protheus.doc} ED007
Faça um Programa que leia três números e mostre o maior e o menor deles.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED007()

    local nNumero1 := 0
    local nNumero2 := 0
    local nNumero3 := 0
    local nMaior   := 0
    local nMenor   := 0
    
    nNumero1 := val(FwInputBox("Digite o primeiro numero: "))
    nNumero2 := val(FwInputBox("Digite o segundo numero: "))
    nNumero3 := val(FwInputBox("Digite o terceiro numero: "))

    //?aqui inicio nMaior e nMenor com o primeiro numero a ser inserido, assim é só comparar com o 2º e o 3º numero.
    nMaior := nNumero1
    nMenor := nNumero1

    if nNumero2 > nMaior
        nMaior := nNumero2
    elseif nNumero2 < nMenor
        nMenor := nNumero2
    endif

    if nNumero3 > nMaior
        nMaior := nNumero3
    elseif nNumero3 < nMenor
        nMenor := nNumero3
    endif

    FwAlertInfo("O maior número é: " + Alltrim(STR(nMaior)))
    FwAlertInfo("O menor número é: " + Alltrim(STR(nMenor)))

return
