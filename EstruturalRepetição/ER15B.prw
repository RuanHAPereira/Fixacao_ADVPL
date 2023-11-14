#include 'Totvs.ch'

user function ER15B()

    local nTermos  := 0
    local nCont    := 0
    local nFibonn1 := 1
    local nFibonn2 := 1
    local nFibo    := 0
    local lRet     := .T.

    nTermos := Val(FwInputBox("Digite o número de termos desejados na série de Fibonacci: "))

    if nTermos < 1
        FwAlertInfo("O número de termos deve ser maior ou igual a 1.")
        lRet := .F.
    else
        FwAlertInfo("Série de Fibonacci com " + AllTrim(Str(nTermos)) + " termos:")
        
        for nCont := 1 to nTermos
            if nCont == 1 .or. nCont == 2
                nFibo := 1
            else
                //? Para os termos restantes, calcule a soma dos dois termos anteriores
                nFibo := nFibonn1 + nFibonn2
                nFibonn1 := nFibonn2
                nFibonn2 := nFibo
            endif

            FwAlertInfo(AllTrim(Str(nFibo)))
        next
    endif

return(lRet)



