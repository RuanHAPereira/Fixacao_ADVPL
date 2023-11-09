#include 'Totvs.ch'

/*/{Protheus.doc} ER030
O Sr. Manoel Joaquim acaba de adquirir uma panificadora e pretende implantar a metodologia da tabelinha, 
que já é um sucesso na sua loja de 1,99. Você foi contratado para desenvolver o programa que monta a 
tabela de preços de pães, de 1 até 50 pães, a partir do preço do pão informado pelo usuário, 
conforme o exemplo abaixo:
Preço do pão: R$ 0.18
Panificadora Pão de Ontem - Tabela de preços
1 - R$ 0.18
2 - R$ 0.36
...
50 - R$ 9.00
@type function
@author Ruan Henrique
@since 11/8/2023
/*/

user function ER030()

    local nPrecoPao   := 0 
    local nPaes       := 0 
    local nPrecoTotal := 0
    local cMsg := ''
    local lRet := .T.
    
    nPrecoPao := Val(FwInputBox("Digite o preço do pão: "))

    if nPrecoPao == 0
        FwAlertError("Programa encerrado.")
        lRet := .F.
    endif
    
    if lRet == .t.
        FwAlertInfo("Panificadora Pão de Ontem - Tabela de preços")

        for nPaes := 1 to 50
            nPrecoTotal := nPaes * nPrecoPao
            cMsg += (AllTrim(Str(nPaes)) + " Pães - R$ " + alltrim(str(nPrecoTotal))) + CRLF

        next
        FwAlertInfo(cMsg)
    endif
    
return(lRet)
