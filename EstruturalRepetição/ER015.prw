#include 'Totvs.ch'

/*/{Protheus.doc} ER015
A série de Fibonacci é formada pela seqüência 1,1,2,3,5,8,13,21,34,55,... 
Faça um programa capaz de gerar a série até o n?ésimo termo.
@type function
@author Ruan Henrique
@since 10/31/2023

/*/
user function ER015()

    local nTermos := 0
    local nCont := 0
    local nFibonn1 := 1
    local nFibonn2 := 1
    local nFibo := 0
    local lRet := .T.

    nTermos := Val(FwInputBox("Digite o número de termos desejados na série de Fibonacci: "))

    if nTermos < 1
        FwAlertInfo("O número de termos deve ser maior ou igual a 1.")
        lRet = .F.
    elseIf nTermos == 1
        FwAlertInfo("Série de Fibonacci com 1 termo: 1")
    else
        FwAlertInfo("Série de Fibonacci com " + AllTrim(Str(nTermos)) + " termos:")

        for nCont := 3 to nTermos
            nFibo := nFibonn1 + nFibonn2
            nFibonn1 := nFibonn2
            nFibonn2 := nFibo

            FwAlertInfo(AllTrim(Str(nFibo)))
            
        next
    endIf

return(lRet)
