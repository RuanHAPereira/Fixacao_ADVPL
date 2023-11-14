#include 'Totvs.ch'

/*/{Protheus.doc} ER031
O Sr. Manoel Joaquim expandiu seus negócios para além dos negócios de 1,99 e agora 
possui uma loja de conveniências. Faça um programa que implemente uma caixa registradora rudimentar. 
O programa deverá receber um número desconhecido de valores referentes aos preços das mercadorias. 
Um valor zero deve ser informado pelo operador para indicar o final da compra. 
O programa deve então mostrar o total da compra e perguntar o valor em dinheiro que o cliente forneceu, 
para então calcular e mostrar o valor do troco. Após esta operação, o programa deverá voltar ao ponto inicial, 
para registrar a próxima compra. A saída deve ser conforme o exemplo abaixo:
Lojas Tabajara 
Produto 1: R$ 2.20
Produto 2: R$ 5.80
Produto 3: R$ 0
Total: R$ 9.00
Dinheiro: R$ 20.00
Troco: R$ 11.00
...
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER031()

    local nProduto     := 0
    local nTotalCompra := 0
    local nDinheiro    := 0 
    local nTroco       := 0
    local nPreco       := 0
    local cContinuar   := ''

    FwAlertInfo("Lojas Tabajara")

    do while .T. 
        nProduto := 1
        nTotalCompra := 0

        do while .T. 
            nPreco := Val(FwInputBox("Produto " + AllTrim(Str(nProduto)) + ": R$ "))
            if nPreco = 0
                exit
            endif

            nTotalCompra := nTotalCompra + nPreco
            nProduto := nProduto + 1
        enddo

        FwAlertInfo("Total: R$ " + Transform(nTotalCompra, "999.99"))

        nDinheiro := Val(FwInputBox("Dinheiro: R$ "))

        if nDinheiro >= nTotalCompra
            nTroco := nDinheiro - nTotalCompra
            FwAlertInfo("Troco: R$ " + Transform(nTroco, "999.99"))
        ELSE
            FwAlertError("Dinheiro insuficiente. Venda cancelada.")
        endif

        cContinuar := FwInputBox("Deseja registrar outra compra? (S/N)")
        if Upper(cContinuar) != "S"
            exit
        endif
    enddo

return
