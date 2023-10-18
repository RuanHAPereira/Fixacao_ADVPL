#include 'Totvs.ch'

/*/{Protheus.doc} ES12
Tendo como dados de entrada a altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a seguinte fórmula: (72.7*altura) - 58
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES12()

    local nAltura    := 0
    local nResultado := 0

    nAltura := Val(FwInputBox("Nos informe sua altura: "))

    Alert('Faremos um calculo para mostrar o peso ideial de acordo com sua altura.')

    nResultado = (72.7 * nAltura)-58

    FwAlertInfo("O peso ideial é : " + Alltrim(str(nResultado)))
return
