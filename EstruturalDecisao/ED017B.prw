#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} ED017B
Faça um Programa que peça um número correspondente a um determinado ano e em seguida informe se este ano é ou não bissexto.
Essa variação é utilizando a função MOD()
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED017B()

    local nAno := 0

    nAno := val(FwInputBox("Digite o ano:"))

    // Verifica se é ano bissexto ou não.
    IF (MOD(nAno, 4) == 0)
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " é bissexto.")
    ELSE
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " não é bissexto.")
    ENDIF

return
