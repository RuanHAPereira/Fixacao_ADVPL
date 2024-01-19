#include "totvs.ch"

//? Testado e ok apos usa @ que é passar parametro por referencia.
//?https://www.youtube.com/watch?v=MJxrGM2xxQE

/*/{Protheus.doc} FUN05
Faça um programa com uma função chamada SomaImp. A função possui dois parâmetros formais: 
taxaImposto, que é a quantia de imposto sobre vendas expressa em porcentagem e custo, que é o 
custo de um item antes do imposto. A função “altera” o valor de custo para incluir o imposto sobre vendas.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN05()

    local nTxImpo := 0
    local nCusto  := 0

    nTxImpo := Val(FwInputBox("Digite a taxa de imposto sobre vendas (em porcentagem): "))
    nCusto := Val(FwInputBox("Digite o custo do item antes do imposto: "))

    SomaImp(nTxImpo, @nCusto)  //? Passa nCusto por referência usando o símbolo @

    FwAlertInfo("O novo custo, incluindo o imposto sobre vendas, é de: " + AllTrim(Str(nCusto, 15, 2)))

return

static function SomaImp(nTxImpo, nCusto)

    local nImposto := nCusto * (nTxImpo / 100)

    nCusto := nCusto + nImposto

return
