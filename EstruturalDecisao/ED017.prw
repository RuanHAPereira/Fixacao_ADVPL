#include 'Totvs.ch'

user function ED017()

    local nAno := 0

    nAno := val(FwInputBox("Digite o ano: "))

    //? Verifica se � ano bissexto ou n�o, s� � ano bissexto quando o ano � divis�vel uniformemente por 4, ou seja, sem resto.
    IF (nAno % 4 == 0)
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " � bissexto.")
    ELSE
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " n�o � bissexto.")
    ENDIF

return
