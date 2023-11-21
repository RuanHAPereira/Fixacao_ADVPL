#include 'Totvs.ch'

/*/{Protheus.doc} ER038A
Um funcionário de uma empresa recebe aumento salarial anualmente. Sabe-se que:
- Esse funcionário foi contratado em 1995, com salário inicial de R$ 1.000,00;
- Em 1996 recebeu aumento de 1,5% sobre seu salário inicial;
- A partir de 1997 (inclusive), os aumentos salariais sempre correspondem ao dobro do percentual do ano anterior. 
Faça um programa que determine o salário atual desse funcionário. 
Após concluir isto, altere o programa permitindo que o usuário digite o salário inicial do funcionário.
@type function
@author Ruan Henrique   
@since 11/16/2023
/*/

user function ER038A()

    local nAnoInicial  := 1995
    local nAnoAtual    := 0
    local nSalario     := 1000
    local nPercentual  := 0

    for nAnoAtual := nAnoInicial + 1 to 2023
        // Cálculo do percentual de aumento
        if nAnoAtual == nAnoInicial + 1
            nPercentual := 1.5 // Aumento de 1,5% em 1996
        else
            nPercentual := nPercentual * 2 // Aumento é o dobro do ano anterior a partir de 1997
        endif

        // Aplica o aumento ao salário
        nSalario := nSalario * nPercentual
    next

    FwAlertInfo("O salário atual do funcionário em " + AllTrim(Str(nAnoAtual)) + ;
    " é: R$ " + Transform(nSalario, "999,999,999.99"))

return
