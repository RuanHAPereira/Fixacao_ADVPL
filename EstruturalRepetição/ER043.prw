#include 'Totvs.ch'

/*/{Protheus.doc} ER043
O card�pio de uma lanchonete � o seguinte:
Especifica��o   C�digo  Pre�o
Cachorro Quente 100     R$ 1,20
Bauru Simples   101     R$ 1,30
Bauru com ovo   102     R$ 1,50
Hamb�rguer      103     R$ 1,20
Cheeseburguer   104     R$ 1,30
Refrigerante    105     R$ 1,00
Fa�a um programa que leia o c�digo dos itens pedidos e as quantidades desejadas. 
Calcule e mostre o valor a ser pago por item (pre�o * quantidade) e o total geral do pedido. 
Considere que o cliente deve informar quando o pedido deve ser encerrado.
@type function
@author Ruan Henrique
@since 11/17/2023
/*/

user function ER043()

    local cEspecif       := ""
    local nCodigo        := 0
    local nQuantidade    := 0
    local nPreco         := 0
    local nTotalItem     := 0
    local nTotalGeral    := 0
    local lRet           := .T.
    local cMsg           := ""
    
    do while lRet
        nCodigo := Val(FwInputBox("Digite o c�digo do item (ou zero = finalizar): "))

        if nCodigo == 0
            lRet := .F.
            exit
        endif

        nQuantidade := Val(FwInputBox("Digite a quantidade desejada: "))

        do case 
            case nCodigo == 100
                cEspecif := "Cachorro Quente"
                nPreco := 1.20
            case nCodigo == 101
                cEspecif := "Bauru Simples"
                nPreco := 1.30
            case nCodigo == 102
                cEspecif := "Bauru com ovo"
                nPreco := 1.50
            case nCodigo == 103
                cEspecif := "Hamb�rguer"
                nPreco := 1.20
            case nCodigo == 104
                cEspecif := "Cheeseburguer"
                nPreco := 1.30
            case nCodigo == 105
                cEspecif := "Refrigerante"
                nPreco := 1.00
            otherwise
                FwAlertError("C�digo de item inv�lido. Tente novamente.")
                    lRet := .F.
                exit
        endcase

        nTotalItem := nQuantidade * nPreco
        nTotalGeral := nTotalGeral + nTotalItem

        cMsg += "Item: " + cEspecif + " - Quantidade: " + AllTrim(Str(nQuantidade)) + " - Valor a Pagar: R$ " + AllTrim(Transform(nTotalItem, "999,999,999.99")) + Chr(13) + Chr(10)
    enddo

    cMsg += "Total Geral do Pedido: R$ " + AllTrim(Transform(nTotalGeral, "999,999,999.99"))

    FwAlertInfo(cMsg)

    return lRet
