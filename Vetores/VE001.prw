#include 'Totvs.ch'

/*/{Protheus.doc} VE001
Faça um Programa que leia um vetor de 5 números inteiros e mostre-os.
@type function
@author Ruan Henrique
@since 11/21/2023
/*/

user function VE001()

    local aNumeros := {}
    local nCont    := 0

    // Lê os 5 números inteiros e armazena no vetor
    for nCont := 1 to 5
        aNumeros := AAdd(aNumeros, Val(FwInputBox("Digite o número " + AllTrim(Str(nCont)) + ": ")))
    next

    // Mostra os números do vetor
    FwAlertInfo("Números do vetor:")
    for nCont := 1 to 5
        FwAlertInfo(AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])))
    next

return
