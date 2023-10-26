#include 'Totvs.ch'

/*/{Protheus.doc} ED008A
Fa�a um programa que pergunte o pre�o de tr�s produtos e informe qual produto voc� deve comprar,
sabendo que a decis�o � sempre pelo mais barato.
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
    
    nPreco1 := val(FwInputbox("Digite o pre�o do primeiro produto: "))
    nPreco2 := val(FwInputbox("Digite o pre�o do segundo produto: "))
    nPreco3 := val(FwInputbox("Digite o pre�o do terceiro produto: "))

    if nPreco1 = nPreco2 .and. nPreco2 = nPreco3
        FwAlertInfo("Os pre�os dos tr�s produtos s�o iguais.")
    elseif nPreco1 = nPreco2 .or. nPreco2 = nPreco3 .or. nPreco1 = nPreco3
        FwAlertInfo("Dois dos pre�os s�o iguais, por favor, insira pre�os diferentes para todos os produtos.")
    else
        if nPreco1 <= nPreco2 .and. nPreco1 <= nPreco3
            cBarato := "Produto 1"
        elseif nPreco2 <= nPreco1 .and. nPreco2 <= nPreco3
            cBarato := "Produto 2"
        else
            cBarato := "Produto 3"
        endif

        FwAlertInfo("Voc� deve comprar o " + Alltrim(cBarato) + " que � o mais barato.")
    endif
return
