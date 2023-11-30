#include 'totvs.ch'

/*/{Protheus.doc} VE012
Faça um Programa que determine quantos alunos com mais de 13 anos possuem altura inferior
 à média de altura desses alunos.
@type function
@author Ruan Henrique
@since 11/28/2023
/*/

user function VE012()

    local aIdades        := {}
    local aAlturas       := {}
    local nAlunos        := 0
    local nCont          := 0
    local nIdade         := 0
    local nAltura        := 0
    local nSomaAlturas   := 0
    local nMediaAlturas  := 0
    local nAbaixoMedia   := 0

    nAlunos := Val(FwInputBox("Quantos alunos a turma possui?"))

    for nCont := 1 to nAlunos
        nIdade := Val(FwInputBox("Digite a idade do aluno " + AllTrim(Str(nCont)) + ": "))
        nAltura := Val(FwInputBox("Digite a altura do aluno " + AllTrim(Str(nCont)) + ": "))
        AAdd(aIdades, nIdade)
        AAdd(aAlturas, nAltura)
        nSomaAlturas := nSomaAlturas + nAltura
    next

    if nAlunos > 0
        nMediaAlturas := nSomaAlturas / nAlunos
    endif

    for nCont := 1 to nAlunos
        if aIdades[nCont] > 13 .and. aAlturas[nCont] < nMediaAlturas
            nAbaixoMedia := nAbaixoMedia + 1
        endif
    next

    FwAlertInfo("Número de alunos com mais de 13 anos e altura inferior à média: " + AllTrim(Str(nAbaixoMedia)))

return
