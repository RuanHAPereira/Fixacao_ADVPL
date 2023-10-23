#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} RE006
Fa�a um Programa que pe�a a temperatura em graus Fahrenheit, transforme e mostre a temperatura em graus Celsius.
C = 5 * ((F-32) / 9).
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

User Function ES009()
    
    Local nFahrenheit := 0
    Local nCelsius := 0

    nFahrenheit := val(FwInputBox('Coloque aqui a temperatura em Fahrenheit que ser� transformada em Celsius'))

    nCelsius := 5*((nFahrenheit -32)/9)

    FwAlertInfo('A temperatura em Celsius �: ' + Alltrim(Str(nCelsius)))
Return
