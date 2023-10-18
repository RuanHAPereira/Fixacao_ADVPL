#include 'Totvs.ch'

user function ED017()

    local nAno := 0

    nAno := val(FwInputBox("Digite o ano: "))

    //? Verifica se é ano bissexto ou não, só é ano bissexto quando o ano é divisível uniformemente por 4, ou seja, sem resto.
    IF (nAno % 4 == 0)
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " é bissexto.")
    ELSE
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " não é bissexto.")
    ENDIF

return
