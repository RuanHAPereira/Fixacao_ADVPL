#include 'Totvs.ch'

user function ES003()

    local nNum1 := 0
    local nNum2 := 0
    local nSoma := 0

    nNum1 := Val(FwInputBox("Informe o primeiro numero: "))
    nNum2 := Val(FwInputBox("Informe o segundo nuemro: "))

    nSoma = nNum1 + nNum2

    Alert("A soma dos numeros é: " + Alltrim(STR(nSoma)))

return
