#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN07
Fa�a um programa que use a fun��o ValorPagamento para determinar o valor a ser pago por uma presta��o de uma 
conta. O programa dever� solicitar ao usu�rio o valor da presta��o e o n�mero de dias em atraso e passar estes 
valores para a fun��o ValorPagamento, que calcular� o valor a ser pago e devolver� este valor ao programa que a 
chamou. O programa dever� ent�o exibir o valor a ser pago na tela. Ap�s a execu��o o programa dever� voltar a 
pedir outro valor de presta��o e assim continuar at� que seja informado um valor igual a zero para a presta��o. 
Neste momento o programa dever� ser encerrado, exibindo o relat�rio do dia, que conter� a quantidade e o valor total 
de presta��es pagas no dia. O c�lculo do valor a ser pago � feito da seguinte forma. Para pagamentos sem atraso, 
cobrar o valor da presta��o. Quando houver atraso, cobrar 3% de multa, mais 0,1% de juros por dia de atraso.
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
        nPrestacao := Val(FwInputBox("Digite o valor da presta��o (ou 0 para encerrar): "))
        
        if nPrestacao == 0
            exit
        endif

        nDiasAtraso := Val(FwInputBox("Digite o n�mero de dias em atraso: "))

        //? Chama a fun��o ValPag para calcular o valor a ser pago
        nValorAPagar := ValPag(nPrestacao, nDiasAtraso)

        //? Exibe o valor a ser pago
        FwAlertInfo("Valor a ser pago: " + AllTrim(Str(nValorAPagar, 10, 2)))

        //? Atualiza o relat�rio do dia
        nQtdPrest++
        nTotPrest := nTotPrest + nValorAPagar
    enddo

    FwAlertInfo("Relat�rio do dia:" + CRLF + "Quantidade de presta��es pagas: " + AllTrim(Str(nQtdPrest)) + CRLF +;
                 "Valor total de presta��es pagas: " + AllTrim(Str(nTotPrest, 10, 2)))

return

static function ValPag(nPrestacao, nDiasAtraso)

    if nDiasAtraso <= 0
        return nPrestacao
    else
        return nPrestacao * (1 + 0.03 + 0.001 * nDiasAtraso)
    endif

return
