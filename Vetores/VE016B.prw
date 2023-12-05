#INCLUDE "totvs.ch"

/*/{Protheus.doc} VE016B
Uma empresa paga seus vendedores com base em comissões. 
O vendedor recebe $200 por semana mais 9 por cento de suas vendas brutas daquela semana. 
Escreva um programa (usando um array de contadores) que determine quantos vendedores receberam 
salários nos seguintes intervalos de valores:
$200 - $299 
$300 - $399
$400 - $499
$500 - $599
$600 - $699
$700 - $799
$800 - $899
$900 - $999
$1000 em diante
Desafio: Crie ma fórmula para chegar na posição da lista a partir do salário, sem fazer vários ifs aninhados.
@type function
@author Ruan Henrique
@since 11/29/2023
/*/

User Function VE016B()

    //Local aSalarios   := {}
    Local nSalario    := 0
    Local nVendedores := 0
    Local aContadores := {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    Local nVendaBruta := 0
    Local cFaixa      := ''
    Local nCont       := 0
    Local nPosicao    := 0
    Local nSemanas    := 0
    Local cMsg        := ''

    nSemanas := Val(FwInputBox("Número de semanas que o vendedor trabalhou no mês: "))

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
        nPosicao := Min(10, Int(nSalario / 100) + 1)

        // Adiciona o salário ao contador correspondente
        aContadores[nPosicao]++

        nVendedores++
    EndDo

    // Gera a mensagem final com os resultados
    For nCont := 1 To 9
        cFaixa := "$" + AllTrim(Str(200 + (100 * (nCont - 1)))) + " - $" + AllTrim(Str(299 + (100 * (nCont - 1))))
        cMsg += cFaixa + ": " + AllTrim(Str(aContadores[nCont])) + CRLF
    Next
    // Última faixa ($1000 em diante)
    cMsg += "$1000 em diante: " + AllTrim(Str(aContadores[10])) + CRLF

    // Exibe os resultados
    FwAlertInfo("Quantidade de vendedores com salários nos intervalos:" + CRLF + cMsg)
    FwAlertInfo("Total de vendedores: " + AllTrim(Str(nVendedores)), "Fim da operação.")

Return
