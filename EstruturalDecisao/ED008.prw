#include 'Totvs.ch'

/*/{Protheus.doc} ED008
Faça um programa que pergunte o preço de três produtos e informe qual produto você deve comprar, sabendo que a decisão é sempre pelo mais barato.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED008()

    local nMenorPreco := 0
    local nCont := 0
    local nPreco := 0

    for nCont := 1 to 3
        nPreco = val(FwInputBox("Digite um preço: "))
        if nCont == 1
            nMenorPreco := nPreco
        elseif nPreco < nMenorPreco
            nMenorPreco := nPreco
        endif
    next

    FwAlertInfo("O menor preço é " + Alltrim(Str(nMenorPreco)))

return
