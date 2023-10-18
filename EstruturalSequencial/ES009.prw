#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} RE006
Fa�a um Programa que pe�a a temperatura em graus Fahrenheit, transforme e mostre a temperatura em graus Celsius.
C = 5 * ((F-32) / 9).
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

User Function RE006()
    
    Local cFahrenh := 0
    Local nCelsius := 0

    cFahrenh := FwInputBox('Coloque aqui a temperatura em Fahrenheit que ser� transformada em Celsius', cFahrenh)

    While !EHNUMERO(cFahrenh)// Valida��o de entrada que determina se � um n�mero, seja ele positivo ou negativo.
        FwAlertError('Voc� n�o colocou uma temperatura v�lida' , 'Erro!')
        cFahrenh := FwInputBox('Coloque aqui a temperatura em Fahrenheit que ser� transformada em Celsius', cBase)
    End

    nCelsius := (VAL(cFahrenh) -32) * (5/9)

    FwAlertSuccess('A temperatura em Celsius �: ' + CVALTOCHAR(nCelsius))
Return
