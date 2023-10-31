#include 'Totvs.ch'

/*/{Protheus.doc} ER015
A s�rie de Fibonacci � formada pela seq��ncia 1,1,2,3,5,8,13,21,34,55,... 
Fa�a um programa capaz de gerar a s�rie at� o n?�simo termo.
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

    nTermos := Val(FwInputBox("Digite o n�mero de termos desejados na s�rie de Fibonacci: "))

    if nTermos < 1
        FwAlertInfo("O n�mero de termos deve ser maior ou igual a 1.")
        lRet = .F.
    elseIf nTermos == 1
        FwAlertInfo("S�rie de Fibonacci com 1 termo: 1")
    else
        FwAlertInfo("S�rie de Fibonacci com " + AllTrim(Str(nTermos)) + " termos:")

        for nCont := 3 to nTermos
            nFibo := nFibonn1 + nFibonn2
            nFibonn1 := nFibonn2
            nFibonn2 := nFibo

            FwAlertInfo(AllTrim(Str(nFibo)))
            
        next
    endIf

return(lRet)
