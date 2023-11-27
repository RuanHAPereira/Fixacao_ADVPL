#include 'totvs.ch'

/*/{Protheus.doc} VE009
Faça um Programa que leia um vetor A com 10 números inteiros, calcule e mostre a soma dos quadrados dos 
elementos do vetor.
@type function
@author Ruan Henrique
@since 11/27/2023
/*/

user function VE009()

    local aNumeros := {}
    local nCont    := 0
    local nSomaQuadrados := 0

    // Ler 10 números inteiros e armazenar no vetor
    for nCont := 1 to 10
        nNum := Val(FwInputBox("Digite o número inteiro " + AllTrim(Str(nCont)) + ": "))
        INT(nNum)
        AAdd(aNumeros, nNum)
    next

    // Calcular a soma dos quadrados dos elementos do vetor
    for nCont := 1 to Len(aNumeros)
        nSomaQuadrados := nSomaQuadrados + aNumeros[nCont] ^ 2
    next

    // Mostrar a soma dos quadrados
    FwAlertInfo("Soma dos quadrados dos elementos do vetor: " + AllTrim(Str(nSomaQuadrados)))

return
