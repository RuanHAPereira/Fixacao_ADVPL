#include 'Totvs.ch'

user function ED009()

    local aNumeros := {}
    local nCont := 0

    FwAlertInfo("Informe tr�s numeros a seguir!!")

    for nCont := 1 to 3
        aNumeros := FwInputbox("Digite um numero: ")
    next

    ASORT(aNumeros, nil, nil, .T.)

    FwAlertInfo("N�meros em ordem decrescente: " + Alltrim(Str(aNumeros)))

return
