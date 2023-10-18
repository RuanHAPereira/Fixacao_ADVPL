#include 'Totvs.ch'

/*/{Protheus.doc} ES13
Tendo como dado de entrada a altura (h) de uma pessoa, construa um algoritmo que calcule seu peso ideal, utilizando as seguintes f�rmulas:
Para homens: (72.7*h) - 58
Para mulheres: (62.1*h) - 44.7
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES13()

    local nAltura    := 0
    local cSexo      := ''
    local nResultado := 0

    nAltura := Val(FwInputBox("Nos informe sua altura: "))
    cSexo := FwInputBox("Informe o sexo: ")

    Alert('Faremos um calculo para mostrar o peso ideial de acordo com sua altura e o sexo informado.')

    if cSexo == "M"
        nResultado = (72.7 * nAltura)-58 
    elseif cSexo == "F"
        nResultado = (62.1 * nAltura)-44.7
    endif
        
    FwAlertInfo("O peso ideial com base na sua altura �: " + Alltrim(str(nResultado)))
return
