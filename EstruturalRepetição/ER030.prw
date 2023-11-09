#include 'Totvs.ch'

/*/{Protheus.doc} ER030
O Sr. Manoel Joaquim acaba de adquirir uma panificadora e pretende implantar a metodologia da tabelinha, 
que j� � um sucesso na sua loja de 1,99. Voc� foi contratado para desenvolver o programa que monta a 
tabela de pre�os de p�es, de 1 at� 50 p�es, a partir do pre�o do p�o informado pelo usu�rio, 
conforme o exemplo abaixo:
Pre�o do p�o: R$ 0.18
Panificadora P�o de Ontem - Tabela de pre�os
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
    
    nPrecoPao := Val(FwInputBox("Digite o pre�o do p�o: "))

    if nPrecoPao == 0
        FwAlertError("Programa encerrado.")
        lRet := .F.
    endif
    
    if lRet == .t.
        FwAlertInfo("Panificadora P�o de Ontem - Tabela de pre�os")

        for nPaes := 1 to 50
            nPrecoTotal := nPaes * nPrecoPao
            cMsg += (AllTrim(Str(nPaes)) + " P�es - R$ " + alltrim(str(nPrecoTotal))) + CRLF

        next
        FwAlertInfo(cMsg)
    endif
    
return(lRet)
