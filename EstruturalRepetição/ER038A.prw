#include 'Totvs.ch'

/*/{Protheus.doc} ER038A
Um funcion�rio de uma empresa recebe aumento salarial anualmente. Sabe-se que:
- Esse funcion�rio foi contratado em 1995, com sal�rio inicial de R$ 1.000,00;
- Em 1996 recebeu aumento de 1,5% sobre seu sal�rio inicial;
- A partir de 1997 (inclusive), os aumentos salariais sempre correspondem ao dobro do percentual do ano anterior. 
Fa�a um programa que determine o sal�rio atual desse funcion�rio. 
Ap�s concluir isto, altere o programa permitindo que o usu�rio digite o sal�rio inicial do funcion�rio.
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
        // C�lculo do percentual de aumento
        if nAnoAtual == nAnoInicial + 1
            nPercentual := 1.5 // Aumento de 1,5% em 1996
        else
            nPercentual := nPercentual * 2 // Aumento � o dobro do ano anterior a partir de 1997
        endif

        // Aplica o aumento ao sal�rio
        nSalario := nSalario * nPercentual
    next

    FwAlertInfo("O sal�rio atual do funcion�rio em " + AllTrim(Str(nAnoAtual)) + ;
    " �: R$ " + Transform(nSalario, "999,999,999.99"))

return
