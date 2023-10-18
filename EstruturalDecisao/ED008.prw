#include 'Totvs.ch'

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
