#include 'Totvs.ch'

/*/{Protheus.doc} ER033
O Departamento Estadual de Meteorologia lhe contratou para desenvolver um programa que leia um conjunto 
indeterminado de temperaturas, 
e informe ao final a menor e a maior temperaturas informadas, bem como a média das temperaturas.
@type function
@author Ruan Henrique
@since 11/13/2023
/*/

user function ER033()

    local nTemp  := 0
    local cTemp  := ''
    local nMenor := 0
    local nMaior := 0
    local nSoma  := 0
    local nMedia := 0
    local nCont  := 0
    
    do while .T.
        cTemp := Upper(FwInputBox("Digite a temperatura (ou 'N' para encerrar): "))

        if cTemp == 'N'
            exit
        else
            nTemp := Val(cTemp)

            if nCont == 0
                nMenor := nTemp
                nMaior := nTemp
            else
                if nTemp < nMenor
                    nMenor := nTemp
                endif

                if nTemp > nMaior
                    nMaior := nTemp
                endif
            endif

            nSoma := nSoma + nTemp
            nCont := nCont + 1
        endif
    enddo

    if nCont > 0
        nMedia := nSoma / nCont

        FwAlertInfo("Menor temperatura: " + AllTrim(Str(nMenor)) + "ºC")
        FwAlertInfo("Maior temperatura: " + AllTrim(Str(nMaior)) + "ºC")
        FwAlertInfo("Média das temperaturas: " + AllTrim(Str(nMedia)) + "ºC")
    else
        FwAlertInfo("Nenhuma temperatura informada.")
    endif

return
