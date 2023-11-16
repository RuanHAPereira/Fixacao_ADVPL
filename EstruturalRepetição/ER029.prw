#include 'Totvs.ch'

/*/{Protheus.doc} ER029
O Sr. Manoel Joaquim possui uma grande loja de artigos de R$ 1,99, com cerca de 10 caixas. 
Para agilizar o cálculo de quanto cada cliente deve pagar ele desenvolveu um tabela que contém o 
número de itens que o cliente comprou e ao lado o valor da conta. Desta forma a atendente do caixa 
precisa apenas contar quantos itens o cliente está levando e olhar na tabela de preços. 
Você foi contratado para desenvolver o programa que monta esta tabela de preços, 
que conterá os preços de 1 até 50 produtos, conforme o exemplo abaixo:
Lojas Quase Dois - Tabela de preços
1 - R$ 1.99
2 - R$ 3.98
...
50 - R$ 99.50
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER029()

    local nNumeroItens := 0
    local nPreco       := 0
    local cMsg         := ""

    FwAlertInfo("Lojas Quase Dois - Tabela de preços")

    for nNumeroItens := 1 to 50
        nPreco := nNumeroItens * 1.99
        cMsg += (AllTrim(Str(nNumeroItens)) + " - Produtos - R$ " + transform(nPreco, "999.99")) + CRLF
    next

    FwAlertInfo(cMsg)

return
