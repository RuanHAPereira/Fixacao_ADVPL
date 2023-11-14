#include 'Totvs.ch'

/*/{Protheus.doc} ER033
O Departamento Estadual de Meteorologia lhe contratou para desenvolver um programa que leia um conjunto indeterminado de temperaturas, 
e informe ao final a menor e a maior temperaturas informadas, bem como a média das temperaturas.
@type function
@author Ruan Henrique
@since 11/13/2023
/*/

user function ER033()

    local aTemp   := {}
    local cTemper := ''
    local nMenor  := 0
    local nMaior  := 0
    local nSoma   := 0
    local nMedia  := 0
    local nCont   := 0

    do while .T.
        cTemper := Upper(FwInputBox("Digite a temperatura (ou 'N' para encerrar): "))

        if cTemper == 'N'
            exit
        else
            aTemp := AAdd(aTemp, Val(cTemper))
        endif
    enddo

    if aTemp > 0
        nMenor := aTemp[1]
        nMaior := aTemp[1]
        nSoma := 0

        for nCont := 1 to aTemp
            if aTemp[nCont] < nMenor
                nMenor := aTemp[nCont]
            endif

            if aTemp[nCont] > nMaior
                nMaior := aTemp[nCont]
            endif

            nSoma := nSoma + aTemp[nCont]
        next

        nMedia := nSoma / aTemp

        FwAlertInfo("Menor temperatura: " + AllTrim(Str(nMenor)))
        FwAlertInfo("Maior temperatura: " + AllTrim(Str(nMaior)))
        FwAlertInfo("Média das temperaturas: " + AllTrim(Str(nMedia)))
    else
        FwAlertInfo("Nenhuma temperatura informada.")
    endif

return

