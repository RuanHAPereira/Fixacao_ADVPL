#include 'Totvs.ch'

user function ED005()

    local nNota1, nNota2 := 0

    nNota1 := val(FwInputBox("Digite a primeira nota: "))
    nNota2 := val(FwInputBox("Digite a segunda nota: "))

    nMedia = (nNota1 + nNota2) /2

    if nMedia >= 7
        FwAlertInfo("APROVADO, sua media � de " + Alltrim(Str(nMedia)) + "pontos!" )
    elseif nMedia < 7
        FwAlertError("REPROVADO, sua media � de " + Alltrim(Str(nMedia)) + "pontos")
    elseif nMedia = 10
        FwAlertSuccess("APROVADO COM DISTIN��O!!! Sua nota � " + Alltrim(Str(nMedia)))
    endif
    
return
