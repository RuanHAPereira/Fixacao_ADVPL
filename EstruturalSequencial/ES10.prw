#include 'Totvs.ch'

user function ES10()

    local nCelsius    := 0
    local nFahrenheit := 0

    nCelsius := Val(FwInputBox("Digite a temperatura em Graus Celsius", nCelsius))

    nFahrenheit := (nCelsius * 9/5) + 32

    FwAlertInfo("A temperatura em fahrenheit é " + Cvaltochar(nFahrenheit) + "Fº")

return
