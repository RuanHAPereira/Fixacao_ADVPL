#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} RE006
Faça um Programa que peça a temperatura em graus Fahrenheit, transforme e mostre a temperatura em graus Celsius.
C = 5 * ((F-32) / 9).
@type function
@author Ruan Henrique
@since 10/17/2023
/*/

User Function RE006()
    
    Local cFahrenh := 0
    Local nCelsius := 0

    cFahrenh := FwInputBox('Coloque aqui a temperatura em Fahrenheit que será transformada em Celsius', cFahrenh)

    While !EHNUMERO(cFahrenh)// Validação de entrada que determina se é um número, seja ele positivo ou negativo.
        FwAlertError('Você não colocou uma temperatura válida' , 'Erro!')
        cFahrenh := FwInputBox('Coloque aqui a temperatura em Fahrenheit que será transformada em Celsius', cBase)
    End

    nCelsius := (VAL(cFahrenh) -32) * (5/9)

    FwAlertSuccess('A temperatura em Celsius é: ' + CVALTOCHAR(nCelsius))
Return
