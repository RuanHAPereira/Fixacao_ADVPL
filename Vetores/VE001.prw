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
    local nNum     := 0
    local cMsg     := ""

    // Lê os 5 números inteiros e armazena no vetor
    for nCont := 1 to 5
        nNum := Val(FwInputBox("Digite o número " + AllTrim(Str(nCont)) + ": "))
        AAdd(aNumeros, nNum)
    next

    // Mostra os números do vetor
    for nCont := 1 to Len(aNumeros)
        cMsg += "Elemento " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])) + ", "
    next

    FwAlertInfo("Números do vetor: " + cMsg)
    
return


