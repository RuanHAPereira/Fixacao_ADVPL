#include 'Totvs.ch'

/*/{Protheus.doc} ER027
Faça um programa que calcule o número médio de alunos por turma. Para isto, peça a quantidade de turmas 
e a quantidade de alunos para cada turma. As turmas não podem ter mais de 40 alunos.
@type function
@author Ruan Henrique
@since 11/8/2023
/*/
//! arrumar laço

user function ER027()

    local nTurmas      := 0
    local nAlunos      := 0
    local nSomaAlunos  := 0
    local nMediaAlunos := 0
    local nCont        := 0

    nTurmas := Val(FwInputBox("Digite a quantidade de turmas: "))
    nAlunos := Val(FwInputBox("Digite a quantidade de alunos: "))

    for nCont := 1 to nTurmas
        
        while nAlunos < 40
            nAlunos := Val(FwInputBox("Digite a quantidade de alunos na turma " + AllTrim(Str(nCont)) + ": "))
            if nAlunos > 40
                FwAlertError("Uma turma não pode ter mais de 40 alunos. Digite novamente.")
            endif
        enddo

        nSomaAlunos := nSomaAlunos + nAlunos
    next

    if nTurmas > 0
        nMediaAlunos := nSomaAlunos / nTurmas
        FwAlertInfo("A média de alunos por turma é: " + AllTrim(Str(nMediaAlunos)))
    else
        FwAlertInfo("Nenhuma turma foi inserida.")
    endif

return
