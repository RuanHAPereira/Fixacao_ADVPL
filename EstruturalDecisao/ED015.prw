#include 'Totvs.ch'

user function ED015()

    local nLado1 := 0
    local nLado2 := 0
    local nLado3 := 0

    nLado1 := val(FwInputBox("Digite o primeiro lado do tri�ngulo: "))
    nLado2 := val(FwInputBox("Digite o segundo lado do tri�ngulo: "))
    nLado3 := val(FwInputBox("Digite o terceiro lado do tri�ngulo: "))

    IF (nLado1 + nLado2 > nLado3) .AND. (nLado1 + nLado3 > nLado2) .AND. (nLado2 + nLado3 > nLado1)

        IF nLado1 == nLado2 .AND. nLado1 == nLado3
            Alert("Os lados formam um tri�ngulo equil�tero.")
        ELSEIF nLado1 == nLado2 .OR. nLado1 == nLado3 .OR. nLado2 == nLado3
            Alert("Os lados formam um tri�ngulo is�sceles.")
        ELSE
            Alert("Os lados formam um tri�ngulo escaleno.")
        ENDIF

    ELSE
        Alert("Os lados n�o podem formar um tri�ngulo.")
    ENDIF

return
