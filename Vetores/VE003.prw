#include 'Totvs.ch'

/*/{Protheus.doc} VE003
Faça um Programa que leia 4 notas, mostre as notas e a média na tela.
@type function
@author Ruan Henrique
@since 11/23/2023
/*/
user function VE003()

    local aNotas  := {}
    local nCont   := 0
    local nNota   := 0
    local nSoma   := 0
    local nMedia  := 0
    local cMsg    := ''

    for nCont := 1 to 4
        nNota := Val(FwInputBox("Digite a nota " + AllTrim(Str(nCont)) + ": "))
        AAdd(aNotas, nNota)
        nSoma := nSoma + nNota
    next

    if Len(aNotas) > 0
        nMedia := nSoma / Len(aNotas)
    endif
   
    for nCont := 1 to Len(aNotas)
        cMsg += "Nota " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNotas[nCont]))
    next

    FwAlertInfo("Média das notas: " + AllTrim(Str(nMedia)))
    FwAlertInfo("Notas digitadas:" + AllTrim(aNotas))
return

