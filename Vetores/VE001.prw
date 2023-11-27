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

    for nCont := 1 to 5
        nNum := Val(FwInputBox("Digite o número " + AllTrim(Str(nCont)) + ": "))
        INT(nNum)
        AAdd(aNumeros, nNum)
    next
    
    for nCont := 1 to Len(aNumeros)
        cMsg += AllTrim(Str(nCont)) + "º número: " + AllTrim(Str(aNumeros[nCont])) + ". " + CRLF
    next

    FwAlertInfo(cMsg, "Números do vetor: ")
    
return


