#include 'totvs.ch'

/*/{Protheus.doc} VE010
Fa�a um Programa que leia dois vetores com 10 elementos cada. Gere um terceiro vetor de 20 elementos,
 cujos valores dever�o ser compostos pelos elementos intercalados dos dois outros vetores.
@type function
@author Seu Nome
@since 11/27/2023
/*/

user function VE010()

    local aVetorA  := {}
    local aVetorB  := {}
    local aVetorC  := {}
    local nElement := 4
    local nCont    := 0
    local nNum     := 0
    local cMsg     := ''

    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o n�mero inteiro para o vetor A, posi��o " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aVetorA, nNum)
    next

    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o n�mero inteiro para o vetor B, posi��o " + AllTrim(Str(nCont)) + ": "))
        nNum := INT(nNum)
        AAdd(aVetorB, nNum)
    next

    for nCont := 1 to nElement
        AAdd(aVetorC, aVetorA[nCont])
        AAdd(aVetorC, aVetorB[nCont])
    next

    for nCont := 1 to Len(aVetorC)
        cMsg += AllTrim(Str(aVetorC[nCont])) + " "
    next

    FwAlertInfo("Vetor C (elementos intercalados de A e B): " + cMsg)

return

