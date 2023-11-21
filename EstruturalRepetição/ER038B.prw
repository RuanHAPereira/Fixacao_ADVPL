#include 'Totvs.ch'

/*/{Protheus.doc} ER038B
Um funcion�rio de uma empresa recebe aumento salarial anualmente: Sabe-se que:
Esse funcion�rio foi contratado em 1995, com sal�rio inicial de R$ 1.000,00;
Em 1996 recebeu aumento de 1,5% sobre seu sal�rio inicial;
A partir de 1997 (inclusive), os aumentos salariais sempre correspondem ao dobro do percentual do ano anterior. 
Fa�a um programa que determine o sal�rio atual desse funcion�rio. Ap�s concluir isto, altere o programa 
permitindo que o usu�rio digite o sal�rio inicial do funcion�rio.
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

    nSalario := Val(FwInputBox("Digite o sal�rio inicial do funcion�rio: "))

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

    FwAlertInfo("O sal�rio atual do funcion�rio em " + AllTrim(Str(nAnoInicial + nAnos)) +;
     " �: R$ " + Alltrim(Transform(nSalario, "999,999,999.99")))

return

