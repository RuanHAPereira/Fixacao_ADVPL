#include 'Totvs.ch'

user function ES13()

    local nAltura := 0
    local cSexo := ''

    nAltura := Val(FwInputBox("Nos informe sua altura: "))
    cSexo := FwInputBox("Informe o sexo: ")

    Alert('Faremos um calculo para mostrar o peso ideial de acordo com sua altura e o sexo informado.')

    if cSexo == "M"
        nResultado = (72.7 * nAltura)-58 
    elseif cSexo == "F"
        nResultado = (62.1 * nAltura)-44.7
    endif
        

    FwAlertInfo("O peso ideial com base na sua altura é: " + Alltrim(str(nResultado)))
return
