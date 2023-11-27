#INCLUDE "totvs.ch"

user function teste45()

    local cGabarito := ""
    local nTotalQuestoes := 10
    local nAlunos := 0
    local nCont   := 0
    local nMaiorAcerto := 0
    local nMenorAcerto := 10
    local nSomaNotas := 0
    local cContinuar := "S"
    local cResposta  := ""
    local nAcertos := 0
    local nMedia   := 0

    FwAlertInfo("Digite o gabarito da prova (10 caracteres, ex: ABCDEEDCBAA):")
    cGabarito := Upper(FwInputBox("Gabarito: "))

    do while cContinuar == "S"
        
        nAlunos ++ //? acrescenta mais um a cada vez que passa na variavel nAlunos
        for nCont := 1 to nTotalQuestoes
            cResposta := Upper(FwInputBox("Aluno " + AllTrim(Str(nAlunos)) + ", Questão " + AllTrim(Str(nCont)) + ": "))

            if SubStr(cResposta, 1, 1) == SubStr(cGabarito, nCont, 1)
                nAcertos++
            endif
        next

        //? Atualiza estatísticas
        if nAcertos > nMaiorAcerto
            nMaiorAcerto := nAcertos
        endif

        if nAcertos < nMenorAcerto
            nMenorAcerto := nAcertos
        endif

        nSomaNotas := nSomaNotas + nAcertos

        cContinuar := Upper(FwInputBox("Outro aluno vai utilizar o sistema? (S/N): "))
    enddo

    nMedia := nSomaNotas / nAlunos

    FwAlertInfo("Resultados:")
    FwAlertInfo("Maior Acerto: " + AllTrim(Str(nMaiorAcerto)))
    FwAlertInfo("Menor Acerto: " + AllTrim(Str(nMenorAcerto)))
    FwAlertInfo("Total de Alunos: " + AllTrim(Str(nAlunos)))
    FwAlertInfo("Média das Notas: " + AllTrim(Str(nMedia)))

return
