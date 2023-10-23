#INCLUDE "Totvs.ch"

/*/{Protheus.doc} ED006
Faça um Programa que leia três números e mostre o maior deles.
@type function
@author Ruan Henrique
@since 10//2023
/*/

user function ED006B()

    local nNum1 := 0
    local nNum2 := 0
    local nNum3 := 0 
    local nMaior := 0

    nNum1 := val(FwInputBox("Digite o primeiro número: "))
    nNum2 := val(FwInputBox("Digite o segundo número: "))
    nNum3 := val(FwInputBox("Digite o terceiro número: "))

    if nNum1 >= nNum2 .and. nNum1 >= nNum3
        nMaior := nNum1 
    elseif nNum2 >= nNum1 .and. nNum2 >= nNum3
        nMaior := nNum2
    else
        nMaior := nNum3
    endif 

    FwAlertInfo("O Maior número é: " + alltrim(str(nMaior)))
    
return
