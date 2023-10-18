#include 'Totvs.ch'

/*/{Protheus.doc} ED010
Fa�a um Programa que pergunte em que turno voc� estuda. 
Pe�a para digitar M-matutino ou V-Vespertino ou N- Noturno. 
Imprima a mensagem "Bom Dia!", "Boa Tarde!" ou "Boa Noite!" ou "Valor Inv�lido!", conforme o caso.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED010()

    local cTurno := ''
    
    cTurno := FwInputBox("Em qual turno voc� estuda?(M - Matutino, V - Vespertino, N - Noturno): ")
    cTurno := Upper(cTurno)

    Do Case
        Case cTurno == "M"
            FwAlertInfo("Bom dia!")
        Case cTurno == "V"
            FwAlertInfo("Boa Tarde!")
        Case cTurno == "N"
            FwAlertInfo("Boa noite!")
        Otherwise
            FwAlertError("Caractere Inv�lido!")
    EndCase

return
