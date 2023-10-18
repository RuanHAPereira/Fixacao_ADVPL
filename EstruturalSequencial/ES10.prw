#include 'Totvs.ch'

/*/{Protheus.doc} ES10
Fa�a um Programa que pe�a a temperatura em graus Celsius, transforme e mostre em graus Fahrenheit.
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

user function ES10()

    local nCelsius    := 0
    local nFahrenheit := 0

    nCelsius := Val(FwInputBox("Digite a temperatura em Graus Celsius", nCelsius))

    nFahrenheit := (nCelsius * 9/5) + 32

    FwAlertInfo("A temperatura em fahrenheit � " + Cvaltochar(nFahrenheit) + "F�")

return
