#include 'Totvs.ch'

/*/{Protheus.doc} ED008A
Faça um programa que pergunte o preço de três produtos e informe qual produto você deve comprar,
sabendo que a decisão é sempre pelo mais barato.
Exercicio feito usando IF/Elseif.
@type function
@author Ruan Henrique
@since 10/20/2023
/*/

user function ED008B()

    local nPreco1 := 0
    local nPreco2 := 0
    local nPreco3 := 0
    local cBarato :=''
    
    nPreco1 := val(FwInputbox("Digite o preço do primeiro produto: "))
    nPreco2 := val(FwInputbox("Digite o preço do segundo produto: "))
    nPreco3 := val(FwInputbox("Digite o preço do terceiro produto: "))

    IF nPreco1 < nPreco2 .AND. nPreco1 < nPreco3
        cBarato := "Produto 1"
    ELSEIF nPreco2 < nPreco1 .AND. nPreco2 < nPreco3
        cBarato := "Produto 2"
    ELSE
        cBarato := "Produto 3"
    ENDIF

    FwAlertInfo("Você deve comprar o " + Alltrim(cBarato) + " que é o mais barato")


return
