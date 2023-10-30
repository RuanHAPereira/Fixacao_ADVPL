#include 'Totvs.ch'

/*/{Protheus.doc} ED028
O Hipermercado Tabajara est� com uma promo��o de carnes que � imperd�vel. Confira:
                      At� 5 Kg           Acima de 5 Kg
File Duplo      R$ 4,90 por Kg          R$ 5,80 por Kg
Alcatra         R$ 5,90 por Kg          R$ 6,80 por Kg
Picanha         R$ 6,90 por Kg          R$ 7,80 por Kg
Para atender a todos os clientes, cada cliente poder� levar apenas um dos tipos de carne da promo��o, 
por�m n�o h� limites para a quantidade de carne por cliente. Se compra for feita no 
cart�o Tabajara o cliente 
receber� ainda um desconto de 5% sobre o total da compra. Escreva um programa que pe�a o 
tipo e a quantidade de carne 
comprada pelo usu�rio e gere um cupom fiscal, contendo as informa��es da compra: tipo e 
quantidade de carne, pre�o total, 
tipo de pagamento, valor do desconto e valor a pagar.
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED028()

    local cTipoPag    := ''
    local cTipoCarne  := ''
    local nKgCarne    := 0
    local nPrecoKg    := 0
    local nValorTotal := 0
    local nDesconto   := 0
    local nValorDesconto := 0
    local lRet := .t.

    cTipoCarne := FwInputbox("Tipo de carne (File Duplo, Alcatra, Picanha): ")
    nKgCarne := val(FwInputbox("Quantidade em Kg: "))

    if nKgCarne <= 5
        if cTipoCarne == "File Duplo"
            nPrecoKg := 4.90
        elseif cTipoCarne == "Alcatra"
            nPrecoKg := 5.90
        elseif cTipoCarne == "Picanha"
            nPrecoKg := 6.90
        else
            FwAlertInfo("Tipo de carne inv�lido!")
            lRet := .f.
        endif
    else
        if cTipoCarne == "File Duplo"
            nPrecoKg := 5.80
        elseif cTipoCarne == "Alcatra"
            nPrecoKg := 6.80
        elseif cTipoCarne == "Picanha"
            nPrecoKg := 7.80
        else
            FwAlertInfo("Tipo de carne inv�lido!") 
            lRet := .f.
        endif
    endif

    if lRet == .t.
        // Calcula o valor total da compra
        nValorTotal := nKgCarne * nPrecoKg

        // Verifica o tipo de pagamento e aplica desconto, se for cart�o Tabajara
        cTipoPag := FwInputbox("Tipo de pagamento (Cart�o Tabajara ou outro): ")

        if UPPER(cTipoPag) == "CART�O TABAJARA"
            nDesconto := nValorTotal * 0.05
            nValorDesconto := nValorTotal - nDesconto
        else
            nValorDesconto := nValorTotal
        endif
    
        // Exibe o cupom fiscal
        FwAlertInfo("#### CUPOM FISCAL ####" + CRLF;
        + "Tipo de carne: " + Alltrim(cTipoCarne) + CRLF;
        + "Quantidade: " + Alltrim(Str(nKgCarne)) + " Kg" + CRLF;
        + "Pre�o total: R$" + Alltrim(Str(nValorTotal)) + CRLF;
        + "Tipo de pagamento: " + Alltrim(cTipoPag) + CRLF;
        + "Desconto: R$" + Alltrim(Str(nDesconto)) + CRLF;
        + "Valor a pagar: R$" + Alltrim(Str(nValorDesconto)))
    endif

return(lRet)
