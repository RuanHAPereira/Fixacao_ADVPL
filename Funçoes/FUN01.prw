#INCLUDE "totvs.ch"
//? ALTEREI ESSE
/*/{Protheus.doc} FUN01
Fa�a um programa para imprimir:
    1
    2   2
    3   3   3
    .....
    n   n   n   n   n   n  ... n
para um n informado pelo usu�rio. Use uma fun��o que receba um valor n inteiro e imprima at� a n-�sima linha.
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
        cMsg := cMsg + Linha(nCont) + CRLF
    Next

    FwAlertInfo(cMsg)

Return

Static Function Linha(nNumero)
    Local cLinha := ""
    local n := 0

    For n := 1 To nNumero
        cLinha += AllTrim(Str(n)) + " "
    Next

Return cLinha

