#include 'Totvs.ch'

/*/{Protheus.doc} ER039
Faça um programa que leia dez conjuntos de dois valores, o primeiro representando o número do aluno 
e o segundo representando a sua altura em centímetros. Encontre o aluno mais alto e o mais baixo. 
Mostre o número do aluno mais alto e o número do aluno mais baixo, junto com suas alturas.
@type function
@author Ruan Henrique 
@since 11/16/2023
/*/

user function ER039()

    local nAluno       := 0
    local nAltura      := 0
    local nAlunoAlto   := 0
    local nAlturaAlto  := 0
    local nAlunoBaixo  := 0
    local nAlturaBaixo := 0
    local nCont        := 0
    local nTeste       := 2

    for nCont := 1 to nTeste
        nAluno := Val(FwInputBox("Digite o número do aluno " + AllTrim(Str(nCont)) + ": "))
        nAltura := Val(FwInputBox("Digite a altura do aluno " + AllTrim(Str(nCont)) + " em centímetros: "))

        if nCont == 1
            //? Primeiro aluno, inicializa alturas máxima e mínima
            nAlturaAlto := nAltura
            nAlturaBaixo := nAltura
            nAlunoAlto := nAluno
            nAlunoBaixo := nAluno
        else
            //? Compara alturas e atualiza máximo e mínimo
            if nAltura > nAlturaAlto
                nAlturaAlto := nAltura
                nAlunoAlto := nAluno
            endif

            if nAltura < nAlturaBaixo
                nAlturaBaixo := nAltura
                nAlunoBaixo := nAluno
            endif
        endif
    next

    FwAlertInfo("Aluno mais alto: Número " + AllTrim(Str(nAlunoAlto)) + ", Altura: " + AllTrim(str(nAlturaAlto, 5, 2)) + " cm")
    FwAlertInfo("Aluno mais baixo: Número " + AllTrim(Str(nAlunoBaixo)) + ", Altura: " + AllTrim(Str(nAlturaBaixo, 5, 2)) + " cm")

return
