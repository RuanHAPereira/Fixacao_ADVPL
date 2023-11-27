#include 'totvs.ch'

/*/{Protheus.doc} VE010
Fa�a um Programa que leia dois vetores com 10 elementos cada. Gere um terceiro vetor de 20 elementos,
 cujos valores dever�o ser compostos pelos elementos intercalados dos dois outros vetores.
@type function
@author Seu Nome
@since 11/25/2023
/*/

user function VE010()

    local aVetorA  := {}
    local aVetorB  := {}
    local aVetorC  := {}
    local nElement := 10
    local nCont    := 0
    local nNum     := 0

    // Ler 10 n�meros inteiros para o vetor A
    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o n�mero inteiro para o vetor A, posi��o " + AllTrim(Str(nCont)) + ": "))
        AAdd(aVetorA, nNum)
    next

    // Ler 10 n�meros inteiros para o vetor B
    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o n�mero inteiro para o vetor B, posi��o " + AllTrim(Str(nCont)) + ": "))
        AAdd(aVetorB, nNum)
    next

    // Gerar vetor C com elementos intercalados de A e B
    for nCont := 1 to nElement
        AAdd(aVetorC, aVetorA[nCont])
        AAdd(aVetorC, aVetorB[nCont])
    next

    // Mostrar o vetor C
    FwAlertInfo("Vetor C (elementos intercalados de A e B): " + AllTrim(CValToChar(aVetorC)))


return
