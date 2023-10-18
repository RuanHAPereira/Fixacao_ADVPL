#include 'Totvs.ch'

/*/{Protheus.doc} ED013
Fa�a um Programa que leia um n�mero e exiba o dia correspondente da semana. 
(1-Domingo, 2- Segunda, etc.), se digitar outro valor deve aparecer valor inv�lido.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

user function ED013()

    local nNumero := 0

    nNumero := Val(FwInputBox("Digite um numero de 1 a 7: "))

    do case
        case nNumero == 1
            FwAlertInfo("Domingo")
        case nNumero == 2
            FwAlertInfo("Segunda-Feira")
        case nNumero == 3
            FwAlertInfo("Ter�a-Feira")
        case nNumero == 4 
            FwAlertInfo("Quarta-Feira")
        case nNumero == 5
            FwAlertInfo("Quinta-Feira")
        case nNumero == 6
            FwAlertInfo("Sexta-Feira")
        case nNumero == 7
            FwAlertInfo("S�bado")
        OTHERWISE
            FwAlertError("Numero invalido.")
    EndCase
    
return
