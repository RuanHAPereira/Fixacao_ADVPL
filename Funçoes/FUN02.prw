#INCLUDE "totvs.ch"

/*/{Protheus.doc} FUN02
Faça um programa para imprimir:
    1
    1   2
    1   2   3
    .....
    1   2   3   ...  n
para um n informado pelo usuário. Use uma função que receba um valor n inteiro imprima até a n-ésima linha.
@type function
@author Ruan Henrique
@since 12/11/2023
/*/
User Function FUN02()

    Local nTotal := 0
    Local nLinha := 0
    Local nNum   := 0
    Local cMsg   := ""

    nTotal := Val(FwInputBox("Digite um valor para n: "))

    for nLinha := 1 to nTotal
        for nNum := 1 to nLinha
            cMsg += AllTrim(Str(nNum)) + ", "
        next
        FwAlertInfo(cMsg)
        cMsg := ""  //? Limpar a mensagem para a próxima linha
    next

Return


