#include 'totvs.ch'

/*/{Protheus.doc} VE011
Fa�a um Programa que leia tr�s vetores com 10 elementos cada. Gere um quarto vetor de 30 elementos,
cujos valores dever�o ser compostos pelos elementos intercalados dos tr�s outros vetores.
@type function
@author Seu Nome
@since 11/25/2023
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

    // Ler 10 n�meros inteiros para o vetor C
    for nCont := 1 to nElement
        nNum := Val(FwInputBox("Digite o n�mero inteiro para o vetor C, posi��o " + AllTrim(Str(nCont)) + ": "))
        AAdd(aVetorC, nNum)
    next

    // Gerar vetor D com elementos intercalados de A, B e C
    for nCont := 1 to nElement
        AAdd(aVetorD, aVetorA[nCont])
        AAdd(aVetorD, aVetorB[nCont])
        AAdd(aVetorD, aVetorC[nCont])
    next

    // Construir a string formatada
    for nCont := 1 to Len(aVetorD)
        cMsg += AllTrim(Str(aVetorD[nCont])) + " "
    next

    // Mostrar o vetor D
    FwAlertInfo("Vetor D (elementos intercalados de A, B e C): " + cMsg)

return
