#include 'Totvs.ch'

/*/{Protheus.doc} ED022
Faça um Programa que peça um número inteiro e determine se ele é par ou impar. 
Dica: utilize o operador módulo (resto da divisão).
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED022()

    local nNum := 0

    nNum := val(FwInputBox("Informe um numero: "))

    if MOD( nNum, 2) == 0
        FwAlertInfo("O numero é par.")
    else
        FwAlertInfo("O numero é impar.")
    endif
    
return
