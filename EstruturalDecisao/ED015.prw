#include 'Totvs.ch'

/*/{Protheus.doc} ED015
Fa�a um Programa que pe�a os 3 lados de um tri�ngulo. O programa dever� informar se os valores podem ser um tri�ngulo. 
Indique, caso os lados formem um tri�ngulo, se o mesmo �: equil�tero, is�sceles ou escaleno.
Dicas:
Tr�s lados formam um tri�ngulo quando a soma de quaisquer dois lados for maior que o terceiro;
Tri�ngulo Equil�tero: tr�s lados iguais;
Tri�ngulo Is�sceles: quaisquer dois lados iguais;
Tri�ngulo Escaleno: tr�s lados diferentes;
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED015()

    local nLado1 := 0
    local nLado2 := 0
    local nLado3 := 0

    nLado1 := val(FwInputBox("Digite o primeiro lado do tri�ngulo: "))
    nLado2 := val(FwInputBox("Digite o segundo lado do tri�ngulo: "))
    nLado3 := val(FwInputBox("Digite o terceiro lado do tri�ngulo: "))

    IF nLado1 == nLado2 .AND. nLado1 == nLado3
        Alert("Os lados formam um tri�ngulo equil�tero.")
    ELSEIF nLado1 == nLado2 .OR. nLado1 == nLado3 .OR. nLado2 == nLado3
        Alert("Os lados formam um tri�ngulo is�sceles.")
    ELSE
        Alert("Os lados formam um tri�ngulo escaleno.")
    ENDIF

return
