#include 'Totvs.ch'

/*/{Protheus.doc} ER018
Fa�a um programa que, dado um conjunto de N n�meros, determine o menor valor, o maior valor e a soma dos valores.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER018()

    local nNum   := 0
    local nCont  := 1
    local nMenor := 0
    local nMaior := 0
    local nSoma  := 0
    local nTotal := 0

    //? Aqui digitamos um valor, esse valor ser� o numero de vezes que ser� pedido o numero dentro do While.
    nTotal := Val(FwInputBox("Digite a quantidade de n�meros no conjunto: "))

    Do While nCont <= nTotal
        nNum := Val(FwInputBox("Digite o n�mero " + AllTrim(Str(nCont)) + ": "))
        
        if nCont == 1
            nMenor := nNum
            nMaior := nNum
        else
            if nNum < nMenor
                nMenor := nNum
            endif

            if nNum > nMaior
                nMaior := nNum
            endif
        endif

        nSoma := nSoma + nNum
        nCont := nCont + 1
    Enddo

    FwAlertInfo("Menor valor: " + AllTrim(Str(nMenor)))
    FwAlertInfo("Maior valor: " + AllTrim(Str(nMaior)))
    FwAlertInfo("Soma dos valores: " + AllTrim(Str(nSoma)))

return


