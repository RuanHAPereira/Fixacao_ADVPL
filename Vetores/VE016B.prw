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

user function VE016B()

    local aSalarios   := {}
    local nSalario    := 0
    local nVendedores := 0
    local aContadores := {0,0,0,0,0,0,0,0,0}
    local nVendaBruta := 0
    local cFaixa      := ''
    local nCont       := 0
    local cMsg        := ''
    local nPosicao    := 0

    do while .T.
        nVendaBruta := Val(FwInputBox("Digite o valor das vendas brutas (-1 para encerrar): "))
        if nVendaBruta == -1
            exit
        endif

        nSalario := 200 + (0.09 * nVendaBruta)

        AAdd(aSalarios, nSalario)

        nPosicao := Int(nSalario / 100) + 1
        if nPosicao > Len(aContadores)
            nPosicao := Len(aContadores)
        endif

        //? Adiciona o salário ao contador correspondente
        aContadores[nPosicao]++

        nVendedores++
    enddo

    for nCont := 1 to Len(aContadores)
        cFaixa := "$" + alltrim(str(200 + (100 * (nCont - 1)))) + " - $" + alltrim(str(299 + (100 * (nCont - 1))))
        cMsg += cFaixa + ": " + AllTrim(Str(aContadores[nCont])) + CRLF
    next
    
    FwAlertInfo("Quantidade de vendedores com salários nos intervalos:"+ CRLF + cMsg)
    FwAlertInfo("Total de vendedores: " + AllTrim(Str(nVendedores)), "Fim da operação.")

return
