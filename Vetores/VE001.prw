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

    // L� os 5 n�meros inteiros e armazena no vetor
    for nCont := 1 to 5
        aNumeros := AAdd(aNumeros, Val(FwInputBox("Digite o n�mero " + AllTrim(Str(nCont)) + ": ")))
    next

    // Mostra os n�meros do vetor
    FwAlertInfo("N�meros do vetor:")
    for nCont := 1 to 5
        FwAlertInfo(AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])))
    next

return
