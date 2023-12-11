#INCLUDE "totvs.ch"

User Function TESTE16()

    Local nSalario    := 0
    Local nVendedores := 0
    Local aContadores := {}
    Local nVendaBruta := 0
    Local nPosicao    := 0
    Local nSemanas    := 0
    Local cMsg        := ''
    local nCont := 0

    nSemanas := Val(FwInputBox("Número de semanas que o vendedor trabalhou no mês: "))

    // Inicializa a lista de contadores com zeros
    For nCont := 1 To 10
        AAdd(aContadores, 0)
    Next

    Do While .T.
        nVendaBruta := Val(FwInputBox("Digite o valor das vendas brutas (-1 para encerrar): "))
        If nVendaBruta == -1
            Exit
        EndIf

        // Calcula o salário semanal
        nSalario := 200 + (0.09 * nVendaBruta)

        // Calcula o salário mensal
        nSalario := nSalario * nSemanas

        // Determina a posição da lista a partir do salário
        nPosicao := 1
        For nCont := 200 To 1000 Step 100
            If nSalario >= nCont .And. nSalario <= nCont + 99
                Break
            EndIf
            nPosicao++
        Next

        // Adiciona o salário ao contador correspondente
        aContadores[nPosicao]++

        nVendedores++
    EndDo

    // Gera a mensagem final com os resultados
    cMsg := ""
    For nCont := 1 To 10
        cMsg += FormInter(200 + (100 * (nCont - 1)), 299 + (100 * (nCont - 1)), aContadores[nCont])
    Next

    // Exibe os resultados
    FwAlertInfo("Quantidade de vendedores com salários nos intervalos:" + CRLF + cMsg)
    FwAlertInfo("Total de vendedores: " + AllTrim(Str(nVendedores)), "Fim da operação.")

Return

Static Function FormInter(nInicio, nFim, nContador)

    Local cResultado := "$" + AllTrim(Str(nInicio)) + " - $" + AllTrim(Str(nFim)) + ": " + AllTrim(Str(nContador)) + CRLF

Return cResultado

