#include 'Totvs.ch'

/*/{Protheus.doc} VE001
Fa�a um Programa que leia um vetor de 5 n�meros inteiros e mostre-os.
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
        nNum := Val(FwInputBox("Digite o n�mero " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aNumeros, nNum)
    next
    
    for nCont := 1 to Len(aNumeros)
        cMsg += AllTrim(Str(nCont)) + "� n�mero: " + AllTrim(Str(aNumeros[nCont])) + ". " + CRLF
    next

    FwAlertInfo(cMsg, "N�meros do vetor: ")
    
return


