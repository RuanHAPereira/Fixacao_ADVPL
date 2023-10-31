#include 'Totvs.ch'

/*/{Protheus.doc} ER014
Fa�a um programa que pe�a 10 n�meros inteiros, calcule e mostre a quantidade de n�meros 
pares e a quantidade de n�meros impares.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER014()

    Local nNumero  := 0
    Local nCont    := 0
    Local nPares   := 0
    Local nImpares := 0

    for nCont := 1 to 10
        nNumero := Val(FwInputBox("Digite o n�mero inteiro " + AllTrim(Str(nCont)) + ": "))

        if nNumero % 2 = 0
            nPares := nPares + 1
        else
            nImpares := nImpares + 1
        endIf
    next

    FwAlertInfo("Quantidade de n�meros pares: " + AllTrim(Str(nPares)))
    
    FwAlertInfo("Quantidade de n�meros �mpares: " + AllTrim(Str(nImpares)))

return

