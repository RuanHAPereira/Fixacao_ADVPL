#include 'Totvs.ch'

/*/{Protheus.doc} ER019
Altere o programa anterior para que ele aceite apenas números entre 0 e 1000.
@type function
@author Ruan Henrique
@since 11/1/2023
/*/

user function ER019()

    local nNumero     := 0
    local nCont       := 1
    local nMaior  := 1001
    local nMenor := -1
    local nSoma       := 0
    local nTotal := 0

    nTotal := Val(FwInputBox("Digite a quantidade de números no conjunto: "))

    Do While nCont <= nTotal
        nNumero := Val(FwInputBox("Digite o número " + AllTrim(Str(nCont)) + ": "))
        
        if nNumero >= 0 .and. nNumero <= 1000
            if nCont == 1
                nMaior := nNumero
                nMenor := nNumero
            else
                if nNumero < nMaior
                    nMaior := nNumero
                endif

                if nNumero > nMenor
                    nMenor := nNumero
                endif
            endif

            nSoma := nSoma + nNumero
            nCont := nCont + 1
        else
            FwAlertInfo("Digite um número válido no intervalo de 0 a 1000.")
        endif
    EndDo

    FwAlertInfo("Menor valor: " + AllTrim(Str(nMaior)))
    FwAlertInfo("Maior valor: " + AllTrim(Str(nMenor)))
    FwAlertInfo("Soma dos valores: " + AllTrim(Str(nSoma)))
return


