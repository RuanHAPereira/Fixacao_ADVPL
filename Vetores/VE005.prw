#include 'Totvs.ch'

/*/{Protheus.doc} VE005
Faça um Programa que leia 20 números inteiros e armazene-os num vetor. 
Armazene os números pares no vetor PAR e os números IMPARES no vetor impar. Imprima os três vetores.
@type function
@author Ruan Henrique
@since 11/24/2023
/*/
user function VE005()

    local aNumeros := {}
    local nNum     := 0
    local aPares   := {}
    local aImpares := {}
    local nCont    := 0
    local cMsg1    := ""
    local cImpar   := ""
    local cPar     := ""
    
    for nCont := 1 to 3
        nNum := Val(FwInputBox("Digite o número inteiro " + AllTrim(Str(nCont)) + ": "))
        INT(nNum)
        AAdd(aNumeros, nNum)
    next

    //? Separar números pares e ímpares
    for nCont := 1 to Len(aNumeros)
        if Mod(aNumeros[nCont], 2) == 0
            AAdd(aPares, aNumeros[nCont])
            cPar += AllTrim(Str(aNumeros[nCont])) + CRLF
        else
            AAdd(aImpares, aNumeros[nCont])
            cImpar += AllTrim(Str(aNumeros[nCont])) + CRLF
        endif
    next

    //? Mostrar os vetores
    for nCont := 1 to Len(aNumeros)
        cMsg1 += "Elemento " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aNumeros[nCont])) + CRLF
    next

    FwAlertInfo(cMsg1,"Números digitados:")
    FwAlertInfo(AllTrim(cPar),"Números Pares: ")
    FwAlertInfo(AllTrim(cImpar),"Números Ímpares: ")

return






