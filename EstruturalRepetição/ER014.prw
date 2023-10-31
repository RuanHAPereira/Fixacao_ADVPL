#include 'Totvs.ch'

/*/{Protheus.doc} ER014
Faça um programa que peça 10 números inteiros, calcule e mostre a quantidade de números 
pares e a quantidade de números impares.
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
        nNumero := Val(FwInputBox("Digite o número inteiro " + AllTrim(Str(nCont)) + ": "))

        if nNumero % 2 = 0
            nPares := nPares + 1
        else
            nImpares := nImpares + 1
        endIf
    next

    FwAlertInfo("Quantidade de números pares: " + AllTrim(Str(nPares)))
    
    FwAlertInfo("Quantidade de números ímpares: " + AllTrim(Str(nImpares)))

return

