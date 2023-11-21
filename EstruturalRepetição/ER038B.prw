#include 'Totvs.ch'

/*/{Protheus.doc} ER038B
Um funcionário de uma empresa recebe aumento salarial anualmente: Sabe-se que:
Esse funcionário foi contratado em 1995, com salário inicial de R$ 1.000,00;
Em 1996 recebeu aumento de 1,5% sobre seu salário inicial;
A partir de 1997 (inclusive), os aumentos salariais sempre correspondem ao dobro do percentual do ano anterior. 
Faça um programa que determine o salário atual desse funcionário. Após concluir isto, altere o programa 
permitindo que o usuário digite o salário inicial do funcionário.
@type function
@author Ruan Henrique
@since 11/16/2023
/*/

user function ER038B()

    local nAnoInicial := 1995
    local nAno        := 0
    local nAnos       := 2023
    local nSalario    := 0
    local nPercentual := 0

    nSalario := Val(FwInputBox("Digite o salário inicial do funcionário: "))

    nAnos := 2023 - nAnoInicial

    for nAno := 1 to nAnos
        if nAno == 1
            // Ano 1996: aumento de 1,5%
            nPercentual := 1.5
        else
            // A partir de 1997: aumentos correspondem ao dobro do percentual do ano anterior
            nPercentual := nPercentual + 2
        endif

        nSalario := nSalario * nPercentual
    next

    FwAlertInfo("O salário atual do funcionário em " + AllTrim(Str(nAnoInicial + nAnos)) +;
     " é: R$ " + Alltrim(Transform(nSalario, "999,999,999.99")))

return

