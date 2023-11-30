#include 'totvs.ch'

/*/{Protheus.doc} VE011
Faça um Programa que leia três vetores com 10 elementos cada. Gere um quarto vetor de 30 elementos,
cujos valores deverão ser compostos pelos elementos intercalados dos três outros vetores.
@type function
@author Ruan Henrique
@since 11/27/2023
/*/

user function VE011()

    local aVetorA  := {}
    local aVetorB  := {}
    local aVetorC  := {}
    local aVetorD  := {}
    local nElement := 3
    local nCont    := 0
    local nNum     := 0
    local cMsg     := ''

    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o número inteiro para o vetor A, posição " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aVetorA, nNum)
    next

    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o número inteiro para o vetor B, posição " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aVetorB, nNum)
    next

    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o número inteiro para o vetor C, posição " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aVetorC, nNum)
    next

    for nCont := 1 to nElement
        AAdd(aVetorD, aVetorA[nCont])
        AAdd(aVetorD, aVetorB[nCont])
        AAdd(aVetorD, aVetorC[nCont])
    next

    for nCont := 1 to Len(aVetorD)
        cMsg += AllTrim(Str(aVetorD[nCont])) + " "
    next

    FwAlertInfo("Vetor D (elementos intercalados de A, B e C): " + cMsg)

return
