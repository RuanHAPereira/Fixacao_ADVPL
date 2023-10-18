#include 'Totvs.ch'

user function ED010()

    local cTurno := ''
    
    cTurno := FwInputBox("Em qual turno você estuda?(M - Matutino, V - Vespertino, N - Noturno): ")
    cTurno := Upper(cTurno)

    Do Case
        Case cTurno == "M"
            FwAlertInfo("Bom dia!")
        Case cTurno == "V"
            FwAlertInfo("Boa Tarde!")
        Case cTurno == "N"
            FwAlertInfo("Boa noite!")
        Otherwise
            FwAlertError("Caractere Inválido!")
    EndCase

return
