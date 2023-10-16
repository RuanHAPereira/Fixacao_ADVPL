#include 'Totvs.ch'

user function ES004()

    local nNota1 := SPACE( 2 )
    local nNota2 := SPACE( 2 )
    local nNota3 := SPACE( 2 )
    local nNota4 := SPACE( 2 )
    local nMedia := 0 

    nNota1 := VAL(FwInputBox("Informe sua primeira nota: ", nNota1))
    nNota2 := VAL(FwInputBox("Informe sua segunda nota: ", nNota2))
    nNota3 := VAL(FwInputBox("Informe sua terceira nota: ", nNota3))
    nNota4 := VAL(FwInputBox("Informe sua quarta nota: ", nNota4))

    nMedia = (nNota1 + nNota2 + nNota3 + nNota4) / 4

    if nMedia < 6
        fwalerterror("Não atingiu a media, sua média é: " + Alltrim(STR(nMedia)) + CRLF + "REPROVADO!!")
    else
        fwalertsuccess("PARABÉNS!! Atingiu a media, sua média é: " + Alltrim(STR(nMedia)) + CRLF + "APROVADO!!")
    endif

return
