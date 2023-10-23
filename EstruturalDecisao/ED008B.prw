#include 'Totvs.ch'

/*/{Protheus.doc} ED008A
Fa�a um programa que pergunte o pre�o de tr�s produtos e informe qual produto voc� deve comprar,
sabendo que a decis�o � sempre pelo mais barato.
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
    
    nPreco1 := val(FwInputbox("Digite o pre�o do primeiro produto: "))
    nPreco2 := val(FwInputbox("Digite o pre�o do segundo produto: "))
    nPreco3 := val(FwInputbox("Digite o pre�o do terceiro produto: "))

    IF nPreco1 < nPreco2 .AND. nPreco1 < nPreco3
        cBarato := "Produto 1"
    ELSEIF nPreco2 < nPreco1 .AND. nPreco2 < nPreco3
        cBarato := "Produto 2"
    ELSE
        cBarato := "Produto 3"
    ENDIF

    FwAlertInfo("Voc� deve comprar o " + Alltrim(cBarato) + " que � o mais barato")


return
