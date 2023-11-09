#include 'Totvs.ch'

/*/{Protheus.doc} ER024
Faça um programa que calcule o mostre a média aritmética de N notas.
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER024()

    local nTotalNotas := 0
    local nNota       := 0
    local nSomaNotas  := 0
    local nMedia      := 0
    local nCont       := 0

    nTotalNotas := Val(FwInputBox("Digite a quantidade de notas: "))

    for nCont := 1 to nTotalNotas
        nNota := Val(FwInputBox("Digite a nota " + alltrim(str(nCont)) + ": "))
        nSomaNotas := nSomaNotas + nNota
    next

    if nTotalNotas > 0
        nMedia := nSomaNotas / nTotalNotas
        FwAlertInfo("A média aritmética é: " + alltrim(str(nMedia)))
    else
        FwAlertInfo("Nenhuma nota foi inserida.")
    endif

return


