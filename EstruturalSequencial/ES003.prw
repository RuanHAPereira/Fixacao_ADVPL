#include 'Totvs.ch'

user function ES003()

    local nNum1 := ''
    local nNum2 := ''
    local nSoma := 0

    nNum1 := Val(FwInputBox("Informe o primeiro numero: ", nNum1))
    nNum2 := Val(FwInputBox("Informe o segundo nuemro: ", nNum2))

    nSoma = nNum1 + nNum2

    Alert("A soma dos numeros é: " + Alltrim(STR(nSoma)))

return
