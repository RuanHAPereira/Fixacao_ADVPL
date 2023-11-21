#include 'Totvs.ch'

/*/{Protheus.doc} ER045
Desenvolver um programa para verificar a nota do aluno em uma prova com 10 questões, 
o programa deve perguntar ao aluno a resposta de cada questão e ao final comparar 
com o gabarito da prova e assim calcular o total de acertos e a nota (atribuir 1 ponto 
por resposta certa). Após cada aluno utilizar o sistema deve ser feita uma pergunta se 
outro aluno vai utilizar o sistema. Após todos os alunos terem respondido informar:
Maior e Menor Acerto;
Total de Alunos que utilizaram o sistema;
A Média das Notas da Turma.
Gabarito da Prova:
01 - A
02 - B
03 - C
04 - D
05 - E
06 - E
07 - D
08 - C
09 - B
10 - A
Após concluir isto você poderia incrementar o programa permitindo que o professor digite 
o gabarito da prova antes dos alunos usarem o programa.
@type function
@author [Seu Nome]
@since [Data]
/*/

user function ER045()

    local cGabarito := "ABCDEEDCBA"  // Gabarito da prova
    local nTotalQuestoes := Len(cGabarito)
    local nTotalAlunos := 0
    local nMediaNotas := 0
    local nNota := 0
    local nMaiorAcerto := 0
    local nMenorAcerto := nTotalQuestoes + 1
    local nSomaNotas := 0
    local cRespostasAluno := ""
    local cContinuar := "S"
    local i := 0

    // Pergunta ao professor se deseja informar um novo gabarito
    if FwInputBox("Deseja informar um novo gabarito da prova? (S/N)") == "S"
        cGabarito := FwInputBox("Digite o novo gabarito da prova (10 caracteres): ")
        if Len(cGabarito) <> nTotalQuestoes
            FwAlertError("O novo gabarito deve conter exatamente 10 caracteres.")
            return
        endif
    endif

    do while cContinuar == "S"
        cRespostasAluno := FwInputBox("Digite as respostas do aluno (10 caracteres): ")

        // Verifica se o número de respostas está correto
        if Len(cRespostasAluno) <> nTotalQuestoes
            FwAlertError("O número de respostas deve ser igual a 10.")
            continue
        endif

        // Calcula a nota do aluno
        nNota := 0
        for i := 1 to nTotalQuestoes
            if Upper(Substring(cRespostasAluno, i, 1)) == Upper(Substring(cGabarito, i, 1))
                nNota := nNota + 1
            endif
        next

        // Atualiza estatísticas
        nTotalAlunos := nTotalAlunos + 1
        nSomaNotas := nSomaNotas + nNota

        // Verifica se é a maior ou menor nota
        if nNota > nMaiorAcerto
            nMaiorAcerto := nNota
        endif
        if nNota < nMenorAcerto
            nMenorAcerto := nNota
        endif

        cContinuar := FwInputBox("Outro aluno vai utilizar o sistema? (S/N)")
    enddo

    // Calcula a média das notas
    nMediaNotas := nSomaNotas / nTotalAlunos

    // Exibe os resultados
    FwAlertInfo("Resultados:")
    FwAlertInfo("Maior Acerto: " + AllTrim(Str(nMaiorAcerto)))
    FwAlertInfo("Menor Acerto: " + AllTrim(Str(nMenorAcerto)))
    FwAlertInfo("Total de Alunos: " + AllTrim(Str(nTotalAlunos)))
    FwAlertInfo("Média das Notas da Turma: " + Transform(nMediaNotas, "999.99"))

return
