#include 'Totvs.ch'

user function ED005()

    local nNota1, nNota2 := 0

    nNota1 := val(FwInputBox("Digite a primeira nota: "))
    nNota2 := val(FwInputBox("Digite a segunda nota: "))

    nMedia = (nNota1 + nNota2) /2

    if nMedia >= 7
        FwAlertInfo("APROVADO, sua media é de " + Alltrim(Str(nMedia)) + "pontos!" )
    elseif nMedia < 7
        FwAlertError("REPROVADO, sua media é de " + Alltrim(Str(nMedia)) + "pontos")
    elseif nMedia = 10
        FwAlertSuccess("APROVADO COM DISTINÇÂO!!! Sua nota é " + Alltrim(Str(nMedia)))
    endif
    
return
