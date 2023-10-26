#include 'Totvs.ch'

/*/{Protheus.doc} ED008A
Faça um programa que pergunte o preço de três produtos e informe qual produto você deve comprar,
sabendo que a decisão é sempre pelo mais barato.
Exercicio feito usando if/Elseif.
@type function
@author Ruan Henrique
@since 10/20/2023
/*/

user function ED008B()

    local nPreco1 := 0
    local nPreco2 := 0
    local nPreco3 := 0
    local cBarato := ''
    
    nPreco1 := val(FwInputbox("Digite o preço do primeiro produto: "))
    nPreco2 := val(FwInputbox("Digite o preço do segundo produto: "))
    nPreco3 := val(FwInputbox("Digite o preço do terceiro produto: "))

    if nPreco1 = nPreco2 .and. nPreco2 = nPreco3
        FwAlertInfo("Os preços dos três produtos são iguais.")
    elseif nPreco1 = nPreco2 .or. nPreco2 = nPreco3 .or. nPreco1 = nPreco3
        FwAlertInfo("Dois dos preços são iguais, por favor, insira preços diferentes para todos os produtos.")
    else
        if nPreco1 <= nPreco2 .and. nPreco1 <= nPreco3
            cBarato := "Produto 1"
        elseif nPreco2 <= nPreco1 .and. nPreco2 <= nPreco3
            cBarato := "Produto 2"
        else
            cBarato := "Produto 3"
        endif

        FwAlertInfo("Você deve comprar o " + Alltrim(cBarato) + " que é o mais barato.")
    endif
return
