#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN07
Faça um programa que use a função ValorPagamento para determinar o valor a ser pago por uma prestação de uma 
conta. O programa deverá solicitar ao usuário o valor da prestação e o número de dias em atraso e passar estes 
valores para a função ValorPagamento, que calculará o valor a ser pago e devolverá este valor ao programa que a 
chamou. O programa deverá então exibir o valor a ser pago na tela. Após a execução o programa deverá voltar a 
pedir outro valor de prestação e assim continuar até que seja informado um valor igual a zero para a prestação. 
Neste momento o programa deverá ser encerrado, exibindo o relatório do dia, que conterá a quantidade e o valor total 
de prestações pagas no dia. O cálculo do valor a ser pago é feito da seguinte forma. Para pagamentos sem atraso, 
cobrar o valor da prestação. Quando houver atraso, cobrar 3% de multa, mais 0,1% de juros por dia de atraso.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN07()

    local nQtdPrest    := 0
    local nTotPrest    := 0
    local nPrestacao   := 0
    local nDiasAtraso  := 0
    local nValorAPagar := 0

    do while .T.
        nPrestacao := Val(FwInputBox("Digite o valor da prestação (ou 0 para encerrar): "))
        
        if nPrestacao == 0
            exit
        endif

        nDiasAtraso := Val(FwInputBox("Digite o número de dias em atraso: "))

        //? Chama a função ValPag para calcular o valor a ser pago
        nValorAPagar := ValPag(nPrestacao, nDiasAtraso)

        //? Exibe o valor a ser pago
        FwAlertInfo("Valor a ser pago: " + AllTrim(Str(nValorAPagar, 10, 2)))

        //? Atualiza o relatório do dia
        nQtdPrest++
        nTotPrest := nTotPrest + nValorAPagar
    enddo

    FwAlertInfo("Relatório do dia:" + CRLF + "Quantidade de prestações pagas: " + AllTrim(Str(nQtdPrest)) + CRLF +;
                 "Valor total de prestações pagas: " + AllTrim(Str(nTotPrest, 10, 2)))

return

static function ValPag(nPrestacao, nDiasAtraso)

    if nDiasAtraso <= 0
        return nPrestacao
    else
        return nPrestacao * (1 + 0.03 + 0.001 * nDiasAtraso)
    endif

return
