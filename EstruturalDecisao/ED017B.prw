#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} ED017B
Fa�a um Programa que pe�a um n�mero correspondente a um determinado ano e em seguida informe se este ano � ou n�o bissexto.
Essa varia��o � utilizando a fun��o MOD()
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED017B()

    local nAno := 0

    nAno := val(FwInputBox("Digite o ano:"))

    // Verifica se � ano bissexto ou n�o.
    IF (MOD(nAno, 4) == 0)
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " � bissexto.")
    ELSE
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " n�o � bissexto.")
    ENDIF

return
