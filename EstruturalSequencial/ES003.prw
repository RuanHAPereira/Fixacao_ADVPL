#include 'Totvs.ch'

/*/{Protheus.doc} ES003
Fa�a um Programa que pe�a dois n�meros e imprima a soma
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES003()

    local nNum1 := 0
    local nNum2 := 0
    local nSoma := 0

    nNum1 := Val(FwInputBox("Informe o primeiro numero: "))
    nNum2 := Val(FwInputBox("Informe o segundo nuemro: "))

    nSoma = nNum1 + nNum2

    Alert("A soma dos numeros �: " + Alltrim(STR(nSoma)))

return
