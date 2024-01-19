#INCLUDE "totvs.ch"

/*/{Protheus.doc} FUN01
Faça um programa para imprimir:
    1
    2   2
    3   3   3
    .....
    n   n   n   n   n   n  ... n
para um n informado pelo usuário. Use uma função que receba um valor n inteiro e imprima até a n-ésima linha.
@type function
@author Ruan Henrique
@since 12/11/2023

/*/
User Function FUN01()

    Local nNum  := 0
    Local nCont := 0
    Local cMsg  := ""

    nNum := Val(FwInputBox("Digite um numero:"))

    For nCont := 1 To nNum
        //? Replicate é usada para repetir uma sequencia de caracter em um determinado numero de vezes
        //? Gera uma string repetida a partir de outra.
        cMsg := cMsg + AllTrim(Str(nCont)) + Replicate(" " + AllTrim(Str(nCont)), nCont - 1) + CRLF
    Next

    FwAlertInfo(cMsg)

Return
