#include 'Totvs.ch'

user function ED008()

    local nMenorPreco := 0
    local nCont := 0

    for nCont := 1 to 3
        nMenorPreco := val(FwInputBox("Digite um preço: "))
    next

    FwAlertInfo("O menor preço é " + Alltrim(Str(nMenorPreco)))
return
