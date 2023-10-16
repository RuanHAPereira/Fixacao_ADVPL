#INCLUDE 'TOTVS.CH'

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
