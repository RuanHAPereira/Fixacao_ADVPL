#include 'Totvs.ch'

/*/{Protheus.doc} ED015
Faça um Programa que peça os 3 lados de um triângulo. O programa deverá informar se os valores podem ser um triângulo. 
Indique, caso os lados formem um triângulo, se o mesmo é: equilátero, isósceles ou escaleno.
Dicas:
Três lados formam um triângulo quando a soma de quaisquer dois lados for maior que o terceiro;
Triângulo Equilátero: três lados iguais;
Triângulo Isósceles: quaisquer dois lados iguais;
Triângulo Escaleno: três lados diferentes;
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED015()

    local nLado1 := 0
    local nLado2 := 0
    local nLado3 := 0

    nLado1 := val(FwInputBox("Digite o primeiro lado do triângulo: "))
    nLado2 := val(FwInputBox("Digite o segundo lado do triângulo: "))
    nLado3 := val(FwInputBox("Digite o terceiro lado do triângulo: "))

    IF nLado1 == nLado2 .AND. nLado1 == nLado3
        Alert("Os lados formam um triângulo equilátero.")
    ELSEIF nLado1 == nLado2 .OR. nLado1 == nLado3 .OR. nLado2 == nLado3
        Alert("Os lados formam um triângulo isósceles.")
    ELSE
        Alert("Os lados formam um triângulo escaleno.")
    ENDIF

return
