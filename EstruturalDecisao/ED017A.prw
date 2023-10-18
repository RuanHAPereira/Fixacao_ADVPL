#include 'Totvs.ch'

/*/{Protheus.doc} ED017A
Faça um Programa que peça um número correspondente a um determinado ano e em seguida informe se este ano é ou não bissexto.
Essa variação do exercicio é utilizando o operador logico %
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED017A()

    local nAno := 0

    nAno := val(FwInputBox("Digite o ano: "))

    //? Verifica se é ano bissexto ou não, só é ano bissexto quando o ano é divisível uniformemente por 4, ou seja, sem resto.
    IF (nAno % 4 == 0)
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " é bissexto.")
    ELSE
        FwAlertInfo("O ano " + Alltrim(Str(nAno)) + " não é bissexto.")
    ENDIF

return
