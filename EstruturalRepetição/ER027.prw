#include 'Totvs.ch'

/*/{Protheus.doc} ER027
Fa�a um programa que calcule o n�mero m�dio de alunos por turma. Para isto, pe�a a quantidade de turmas 
e a quantidade de alunos para cada turma. As turmas n�o podem ter mais de 40 alunos.
@type function
@author Ruan Henrique
@since 11/8/2023
/*/
//! arrumar la�o

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
                FwAlertError("Uma turma n�o pode ter mais de 40 alunos. Digite novamente.")
            endif
        enddo

        nSomaAlunos := nSomaAlunos + nAlunos
    next

    if nTurmas > 0
        nMediaAlunos := nSomaAlunos / nTurmas
        FwAlertInfo("A m�dia de alunos por turma �: " + AllTrim(Str(nMediaAlunos)))
    else
        FwAlertInfo("Nenhuma turma foi inserida.")
    endif

return
