#include 'Totvs.ch'

/*/{Protheus.doc} ER050
Sendo H = 1 + 1/2 + 1/3 + 1/4 + ... + 1/N, faça um programa que calcule o valor de H com N termos.
@type function
@author Ruan Henrique
@since 11/21/2023
/*/

user function ER050()
    local nTermos := 0
    local nCont   := 0
    local nSoma   := 0

    nTermos := Val(FwInputBox("Digite o número de termos (N) da série: "))

    for nCont := 1 to nTermos
        nSoma := nSoma + 1 / nCont
    next

    // Exibir o valor de H com N termos
    FwAlertInfo("Valor de H com " + AllTrim(Str(nTermos)) + " termos: " + AllTrim(Str(nSoma)))

return
