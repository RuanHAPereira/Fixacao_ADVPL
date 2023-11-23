#include 'Totvs.ch'

/*/{Protheus.doc} ER045
Desenvolver um programa para verificar a nota do aluno em uma prova com 10 quest�es, 
o programa deve perguntar ao aluno a resposta de cada quest�o e ao final comparar 
com o gabarito da prova e assim calcular o total de acertos e a nota (atribuir 1 ponto 
por resposta certa). Ap�s cada aluno utilizar o sistema deve ser feita uma pergunta se 
outro aluno vai utilizar o sistema. Ap�s todos os alunos terem respondido informar:
Maior e Menor Acerto;
Total de Alunos que utilizaram o sistema;
A M�dia das Notas da Turma.
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
Ap�s concluir isto voc� poderia incrementar o programa permitindo que o professor digite 
o gabarito da prova antes dos alunos usarem o programa.
@type function
@author Ruan Henrique
@since 11/21/2023
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
    local cResposta := ""
    local cPergunta := "S"
    local nCont := 0
    local lRet := .T.

    while lRet := .T.
        if FwInputBox("Deseja informar um novo gabarito da prova? (S/N)") == "S"
            cGabarito := FwInputBox("Digite o novo gabarito da prova (10 caracteres): ")
            if Len(cGabarito) <> nTotalQuestoes
                FwAlertError("O novo gabarito deve conter exatamente 10 caracteres.")
                lRet := .F.
            endif
        endif

        do while cPergunta == "S"
            cResposta := FwInputBox("Digite as respostas do aluno (10 caracteres): ")

            // Verifica se o n�mero de respostas est� correto
            if Len(cResposta) <> nTotalQuestoes
                FwAlertError("O n�mero de respostas deve ser igual a 10.")
                
            endif

            // Calcula a nota do aluno
            nNota := 0
            for nCont := 1 to nTotalQuestoes
                if Upper(Substring(cResposta, nCont, 1)) == Upper(Substring(cGabarito, nCont, 1))
                    nNota := nNota + 1
                endif
            next

            // Atualiza estat�sticas
            nTotalAlunos := nTotalAlunos + 1
            nSomaNotas := nSomaNotas + nNota

            // Verifica se � a maior ou menor nota
            if nNota > nMaiorAcerto
                nMaiorAcerto := nNota
            endif
            if nNota < nMenorAcerto
                nMenorAcerto := nNota
            endif

            cPergunta := FwInputBox("Outro aluno vai utilizar o sistema? (S/N)")
        enddo
    enddo

    nMediaNotas := nSomaNotas / nTotalAlunos
    
    FwAlertInfo("Maior Acerto: " + AllTrim(Str(nMaiorAcerto)) + CRLF +;
    "Menor Acerto: " + AllTrim(Str(nMenorAcerto)) + CRLF +;
    "Total de Alunos: " + AllTrim(Str(nTotalAlunos)) + CRLF+;
    "M�dia das Notas da Turma: " + Transform(nMediaNotas, "999.99"), "Resultados")

return
