#include 'totvs.ch'

/*/{Protheus.doc} VE008
Faça um Programa que peça a idade e a altura de 5 pessoas, armazene cada informação no seu respectivo vetor.
Imprima a idade e a altura na ordem inversa à ordem lida.
@type function
@author Seu Nome
@since 11/25/2023
/*/

user function VE008()

    local aIdades   := {}
    local aAlturas  := {}
    local nCont     := 0
    local cMgsIdade := ""
    local cMsgAltu  := ""

    for nCont := 1 to 3
        AAdd(aIdades, Val(FwInputBox("Digite a idade da pessoa " + AllTrim(Str(nCont)) + ": ")))
        AAdd(aAlturas, Val(FwInputBox("Digite a altura da pessoa " + AllTrim(Str(nCont)) + ": ")))
    next

    for nCont := Len(aIdades) to 1 step -1
        cMgsIdade += "Pessoa " + AllTrim(Str(nCont)) + " - Idade: " + AllTrim(Str(aIdades[nCont])) + CRLF
    next
    FwAlertInfo(cMgsIdade,"Idades na ordem inversa:")

    for nCont := Len(aAlturas) to 1 step -1
        cMsgAltu += "Pessoa " + AllTrim(Str(nCont)) + " - Altura: " + AllTrim(Str(aAlturas[nCont],4,2)) + CRLF
    next
    FwAlertInfo(cMsgAltu,"Alturas na ordem inversa:")
return
