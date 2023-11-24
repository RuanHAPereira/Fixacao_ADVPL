#INCLUDE "totvs.ch"

/*/{Protheus.doc} VE002
Fa�a um Programa que leia um vetor de 10 n�meros reais e mostre-os na ordem inversa.
@type function
@author Ruan Henrique
@since 11/23/2023
/*/

user function VE002()

    local aNumeros := {}
    local nCont    := 0
    local nNum     := 0
    local cMsg     := ''

    for nCont := 1 to 5
        nNum := Val(FwInputBox("Digite o n�mero real " + AllTrim(Str(nCont)) + ": "))
        AAdd(aNumeros, nNum)
    next

    
    for nCont := Len(aNumeros) to 1 step -1
        cMsg += AllTrim(Str(nCont)) + "�= " + AllTrim(Str(aNumeros[nCont])) + CRLF
    next

    FwAlertInfo("N�meros do vetor na ordem inversa:" + CRLF + cMsg)
return
