#INCLUDE "totvs.ch"

/*/{Protheus.doc} VE002
Faça um Programa que leia um vetor de 10 números reais e mostre-os na ordem inversa.
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
        nNum := Val(FwInputBox("Digite o número real " + AllTrim(Str(nCont)) + ": "))
        AAdd(aNumeros, nNum)
    next

    
    for nCont := Len(aNumeros) to 1 step -1
        cMsg += AllTrim(Str(nCont)) + "º= " + AllTrim(Str(aNumeros[nCont])) + CRLF
    next

    FwAlertInfo("Números do vetor na ordem inversa:" + CRLF + cMsg)
return
