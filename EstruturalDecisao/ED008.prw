#include 'Totvs.ch'

/*/{Protheus.doc} ED008
Fa�a um programa que pergunte o pre�o de tr�s produtos e informe qual produto voc� deve comprar, sabendo que a decis�o � sempre pelo mais barato.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED008()

    local nMenorPreco := 0
    local nCont := 0
    local nPreco := 0

    for nCont := 1 to 3
        nPreco = val(FwInputBox("Digite um pre�o: "))
        if nCont == 1
            nMenorPreco := nPreco
        elseif nPreco < nMenorPreco
            nMenorPreco := nPreco
        endif
    next

    FwAlertInfo("O menor pre�o � " + Alltrim(Str(nMenorPreco)))

return
