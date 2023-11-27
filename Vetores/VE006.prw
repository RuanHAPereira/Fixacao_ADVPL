#include 'Totvs.ch'

/*/{Protheus.doc} VE006
Fa�a um Programa que pe�a as quatro notas de 10 alunos, calcule e armazene num vetor 
a m�dia de cada aluno, imprima o n�mero de alunos com m�dia maior ou igual a 7.0.
@type function
@author Ruan Henrique
@since 11/24/2023
/*/

user function VE006()

    local aNotas     := {}
    local aMedias    := {}
    local nAlunos    := 3   
    local nCont      := 0
    local nI         := 0
    local nMedia     := 0
    local nAprovados := 0

    for nCont := 1 to nAlunos
        aNotas := {}
        for nI := 1 to 4
            AAdd(aNotas, Val(FwInputBox("Digite a nota " + AllTrim(Str(nI)) + " do aluno " + AllTrim(Str(nCont)) + ": ")))
        next

        // Calcular a m�dia do aluno
        nMedia := SomaArray(aNotas) / Len(aNotas)
        AAdd(aMedias, nMedia)

        // Verificar se o aluno foi aprovado
        if nMedia >= 7.0
            nAprovados++
        endif
    next

    
    FwAlertInfo("M�dias dos alunos:")
    for nCont := 1 to nAlunos
        FwAlertInfo("Aluno " + AllTrim(Str(nCont)) + ": " + AllTrim(Str(aMedias[nCont])))
    next

    FwAlertInfo("N�mero de alunos aprovados: " + AllTrim(Str(nAprovados)))

return

//? Fun��o para calcular a soma de um array
static function SomaArray(aValores)

    local nSoma := 0
    local nCont := 0

    for nCont := 1 to Len(aValores)
        nSoma += aValores[nCont]
    next

return nSoma

