#include 'Totvs.ch'

/*/{Protheus.doc} ED017A
Fa�a um Programa que pe�a um n�mero correspondente a um determinado ano e em seguida informe se este ano � ou n�o bissexto.
Essa varia��o do exercicio � utilizando o operador logico %
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED017A()

    local nAno := 0

    nAno := val(FwInputBox("Digite o ano: "))

    //? Verifica se � ano bissexto ou n�o, s� � ano bissexto quando o ano � divis�vel uniformemente por 4, ou seja, sem resto.
    IF (nAno % 4 == 0)
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " � bissexto.")
    ELSE
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " n�o � bissexto.")
    ENDIF

return
