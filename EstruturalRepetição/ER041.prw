#include 'Totvs.ch'

/*/{Protheus.doc} ER041
Faça um programa que receba o valor de uma dívida e mostre uma tabela com os seguintes dados: 
valor da dívida, valor dos juros, quantidade de parcelas e valor da parcela.
Os juros e a quantidade de parcelas seguem a tabela abaixo:
Quantidade de Parcelas  % de Juros sobre o valor inicial da dívida
1       0
3       10
6       15
9       20
12      25
@type function
@author Ruan Henrique
@since 11/16/2023
/*/

user function ER041()

    local nDivida       := 0
    local nJuros        := 0
    local nParcelas     := 0
    local nValorParcela := 0
    local nCont         := 0

    nDivida := Val(FwInputBox("Digite o valor da dívida: "))

    //FwAlertInfo("Valor da Dívida - Valor dos Juros - Quantidade de Parcelas - Valor da Parcela")

    for nCont := 1 to 5
        // Define a quantidade de parcelas e o percentual de juros conforme a tabela
        do case 
            case nCont == 1
                nParcelas := 1
                nJuros := 0
            case nCont ==2
                nParcelas := 3
                nJuros := 0.10
            case nCont == 3
                nParcelas := 6
                nJuros := 0.15
            case nCont == 4
                nParcelas := 9
                nJuros := 0.20
            case nCont == 5
                nParcelas := 12
                nJuros := 0.25
        endcase

        nValorParcela := (nDivida * (1 + nJuros / 100)) / nParcelas

        // Exibe os resultados dentro do loop
        FwAlertInfo("Valor da Dívida R$ " + AllTrim(Str(nDivida)) + ;
        " - Valor dos Juros R$ " + AllTrim(Str(nDivida * nJuros / 100)) +;
        " - Quantidade de Parcelas " + AllTrim(Str(nParcelas)) + ;
        " - Valor da Parcela R$ " + AllTrim(transform(nValorParcela, "999,999.99")))
    next

return

