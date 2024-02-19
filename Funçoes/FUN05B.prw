#include "totvs.ch"

/*/{Protheus.doc} FUN05B
Faça um programa com uma função chamada SomaImp. A função possui dois parâmetros formais: 
taxaImposto, que é a quantia de imposto sobre vendas expressa em porcentagem e custo, que é o 
custo de um item antes do imposto. A função “altera” o valor de custo para incluir o imposto sobre vendas.
Refeito, em partes, para nao usar passagem de parametro por referencia
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN05B()

    local aArea      := GetArea()
    local nTaxaImp   := 0
    local nCusto     := 0
    local nNovoCusto := 0

    nTaxaImp := Val(FwInputBox("Digite a taxa de imposto sobre vendas (em porcentagem): "))
    nCusto := Val(FwInputBox("Digite o custo do item antes do imposto: "))

    nNovoCusto := SomaImp(nTaxaImp, nCusto) 

    FwAlertInfo("O novo custo, incluindo o imposto sobre vendas, é de: " + AllTrim(Str(nNovoCusto, 15, 2)))

    RestArea(aArea)
return

static function SomaImp(nTaxaImp, nCusto)

    local nImposto := nCusto * (nTaxaImp / 100)
    local nNovoCusto := nCusto + nImposto

return nNovoCusto

//? O erro que cometi no codigo anterior com relação ao FUN06 é que no FUN06 criei um função unicamente para exibir
//? o valor que era pedido, ja no codigo FUM05 eu tentava retirar um valor de uma static function sem trata-lo
//? utilizando uma nova variavel ou apresentando como uma função. 
