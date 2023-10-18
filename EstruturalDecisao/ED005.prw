#include 'Totvs.ch'

user function ED005()

    local nNota1 := 0 
    local nNota2 := 0
    local nMedia := 0

    nNota1 := val(FwInputBox("Digite a primeira nota: "))
    nNota2 := val(FwInputBox("Digite a segunda nota: "))

    nMedia = (nNota1 + nNota2)/2

    if nMedia == 10
        FwAlertSuccess("APROVADO COM DISTINÇÂO, sua media é de " + Alltrim(Str(nMedia)) + "pontos!" )
    elseif nMedia < 7
        FwAlertError("REPROVADO, sua media é de " + Alltrim(Str(nMedia)) + "pontos!")
    else 
        FwAlertInfo("APROVADO!!! Sua nota é " + Alltrim(Str(nMedia)) + "pontos!")
    endif
    
return
