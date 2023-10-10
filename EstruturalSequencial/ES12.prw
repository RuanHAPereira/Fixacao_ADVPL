#include 'Totvs.ch'

user function ES12()

    local nAltura := 0

    nAltura := Val(FwInputBox("Nos informe sua altura: "))

    Alert('Faremos um calculo para mostrar o peso ideial de acordo com sua altura.')

    nResultado = (72.7 * nAltura)-58

    FwAlertInfo("O peso ideial é : " + Alltrim(str(nResultado)))
return
