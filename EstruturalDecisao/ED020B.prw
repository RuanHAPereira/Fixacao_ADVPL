#include 'Totvs.ch'

user function ED020B()

    local nNota1 := 0
    local nNota2 := 0
    local nNota3 := 0
    local nMedia := 0

    nNota1 := val(FwInputBox("Informe a primeira nota: "))
    nNota2 := val(FwInputBox("Informe a segunda nota: "))   
    nNota3 := val(FwInputBox("Informe a terceira nota: "))
   
    nMedia = (nNota1 + nNota2 + nNota3) / 3

    Do case
        Case nMedia == 10
            FwAlertSuccess("Aprovado com Distinção. Média: " + alltrim(str(nMedia)))
        Case nMedia >= 7
            FwAlertInfo("Aprovado. Média: " + alltrim(Str(nMedia)))
        OTHERWISE
            FwAlertError("Reprovado. Média: " + alltrim(Str(nMedia)))
    ENDCASE

return
