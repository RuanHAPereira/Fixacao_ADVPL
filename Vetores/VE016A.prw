#include 'totvs.ch'

/*/{Protheus.doc} VE016
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
@type function
@author Ruan Henrique
@since 11/29/2023
/*/

user function VE016A()

    local aSalarios   := {}
    local nSalario    := 0
    local nVendedores := 0
    local aContadores := {0,0,0,0,0,0,0,0,0}
    local nVendaBruta := 0
    local cFaixa      := ''
    local nCont       := 0
    local cMsg        := ''

    do while .T.
        nVendaBruta := Val(FwInputBox("Digite o valor das vendas brutas (-1 para encerrar): "))
        if nVendaBruta == -1
            exit
        endif

        // Calcula o salário do vendedor
        nSalario := 200 + (0.09 * nVendaBruta)

        AAdd(aSalarios, nSalario)

        if nSalario >= 200 .and. nSalario <= 299
            aContadores[1]++
        elseif nSalario >= 300 .and. nSalario <= 399
            aContadores[2]++
        elseif nSalario >= 400 .and. nSalario <= 499
            aContadores[3]++
        elseif nSalario >= 500 .and. nSalario <= 599
            aContadores[4]++
        elseif nSalario >= 600 .and. nSalario <= 699
            aContadores[5]++
        elseif nSalario >= 700 .and. nSalario <= 799
            aContadores[6]++
        elseif nSalario >= 800 .and. nSalario <= 899
            aContadores[7]++
        elseif nSalario >= 900 .and. nSalario <= 999
            aContadores[8]++
        else
            aContadores[9]++
        endif

        nVendedores++
    enddo

    for nCont := 1 to Len(aContadores)
        cFaixa := "$" + alltrim(str(200 + (100 * (nCont - 1)))) + " - $" + alltrim(str(299 + (100 * (nCont - 1))))
        cMsg += cFaixa + ": " + AllTrim(Str(aContadores[nCont])) + CRLF
    next
    
    FwAlertInfo("Quantidade de vendedores com salários nos intervalos:"+ CRLF + cMsg)
    FwAlertInfo("Total de vendedores: " + AllTrim(Str(nVendedores)), "Fim da operação.")

return

