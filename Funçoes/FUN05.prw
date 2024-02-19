#include "totvs.ch"

//? Testado e ok apos usa @ que � passar parametro por referencia.
//?https://www.youtube.com/watch?v=MJxrGM2xxQE

/*/{Protheus.doc} FUN05
Fa�a um programa com uma fun��o chamada SomaImp. A fun��o possui dois par�metros formais: 
taxaImposto, que � a quantia de imposto sobre vendas expressa em porcentagem e custo, que � o 
custo de um item antes do imposto. A fun��o �altera� o valor de custo para incluir o imposto sobre vendas.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN05()

    local aArea   := GetArea()
    local nTxImpo := 0
    local nCusto  := 0

    nTxImpo := Val(FwInputBox("Digite a taxa de imposto sobre vendas (em porcentagem): "))
    nCusto := Val(FwInputBox("Digite o custo do item antes do imposto: "))

    SomaImp(nTxImpo, @nCusto)  //? Passa nCusto por refer�ncia usando o s�mbolo @

    FwAlertInfo("O novo custo, incluindo o imposto sobre vendas, � de: " + AllTrim(Str(nCusto, 15, 2)))

    RestArea(aArea)
return

static function SomaImp(nTxImpo, nX)

    local nImposto := nX * (nTxImpo / 100)

    nX := nX + nImposto

return
