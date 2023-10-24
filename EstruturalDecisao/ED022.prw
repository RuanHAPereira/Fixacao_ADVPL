#include 'Totvs.ch'

/*/{Protheus.doc} ED022
Fa�a um Programa que pe�a um n�mero inteiro e determine se ele � par ou impar. 
Dica: utilize o operador m�dulo (resto da divis�o).
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED022()

    local nNum := 0

    nNum := val(FwInputBox("Informe um numero: "))

    if MOD( nNum, 2) == 0
        FwAlertInfo("O numero � par.")
    else
        FwAlertInfo("O numero � impar.")
    endif
    
return
