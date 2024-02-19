#INCLUDE "TOTVS.CH"

//? Testado e ok, o programa demonstra todas as possiveis combinações de quadrados magicos entao a execução fica exageradamente longa.

/*/{Protheus.doc} FUN14
Programa que identifica e mostra na tela todos os quadrados mágicos de lado 3.
@type function
@author Ruan Henrique
@since 12/19/2023
/*/

User Function FUN14()

    local aArea    := GetArea()
    local nOrdem   := 0
    local aNumeros := {}
    local nI       := 0
    
    //? Solicita ao usuário a ordem do quadrado mágico
    While .T.
        nOrdem := Val(FwInputBox("Digite a ordem do quadrado mágico (entre 3 e 9):"))
        If nOrdem >= 3 .And. nOrdem <= 9
            Exit
        Else
            FwAlertInfo("Por favor, insira um número entre 3 e 9.")
        EndIf
    Enddo

    //? Inicializa um vetor com os números de 1 a nOrdem^2
    for nI := 1 To nOrdem^2
        AAdd(aNumeros, nI)
    next

    //? Gera todas as combinações possíveis dos números
    Permutacoes(aNumeros, 1, Len(aNumeros))

    RestArea(aArea)
Return

static Function Permutacoes(aNumeros, nInicio, nFim)

    local nI   := 0
    local lRet := .T.

    //? Se chegou ao final do intervalo, verifica se é um quadrado mágico
    If nInicio = nFim
        If Quadrado(aNumeros)
            ExibeQuad(aNumeros)
        EndIf
    Else
        //? Gera todas as permutações
        for nI := nInicio To nFim
            Troca(aNumeros, nInicio, nI)
            lRet := Permutacoes(aNumeros, nInicio + 1, nFim)
            Troca(aNumeros, nInicio, nI)
        next
    EndIf

Return lRet

static Function Troca(aNumeros, nIndex1, nIndex2)

    local nTemp := aNumeros[nIndex1]
    aNumeros[nIndex1] := aNumeros[nIndex2]
    aNumeros[nIndex2] := nTemp

Return

static Function Quadrado(aNumeros)

    local nOrdem := Int(Sqrt(Len(aNumeros)))
    local nI := 0
    local nJ := 0
    local nSomaLinha  := 0
    local nSomaColuna := 0
    local nSomaDiag1  := 0
    local nSomaDiag2  := 0
    local nSomaMagica := (nOrdem * (nOrdem^2 + 1)) / 2
    local lRet := .F.

    //? Verifica a soma das linhas, colunas e diagonais
    for nI := 1 To nOrdem
        for nJ := 1 To nOrdem
            nSomaLinha += aNumeros[(nI - 1) * nOrdem + nJ]
            nSomaColuna += aNumeros[(nJ - 1) * nOrdem + nI]
        next
        If nSomaLinha = nSomaMagica .And. nSomaColuna = nSomaMagica
            lRet := .T.
        Else
            lRet := .F.
        EndIf
    next

    for nI := 1 To nOrdem
        nSomaDiag1 += aNumeros[(nI - 1) * nOrdem + nI]
        nSomaDiag2 += aNumeros[(nI - 1) * nOrdem + (nOrdem - nI + 1)]
    next
    If nSomaDiag1 = nSomaMagica .And. nSomaDiag2 = nSomaMagica
        lRet := .T.
    Else
        lRet := .F.
    EndIf

Return lRet

static Function ExibeQuad(aNumeros)

    local nOrdem := Int(Sqrt(Len(aNumeros)))
    local cMensagem := "Quadrado Mágico:" + CRLF
    local nI := 0
    local nJ := 0

    for nI := 1 To nOrdem
        for nJ := 1 To nOrdem
            cMensagem += AllTrim(Str(aNumeros[(nI - 1) * nOrdem + nJ])) + " "
        next
        cMensagem += CRLF
    next

    FwAlertInfo(cMensagem, "Quadrado Mágico Encontrado")

Return
