#INCLUDE "totvs.ch"

//?ALTEREI ESSE
/*/{Protheus.doc} FUN02
Fa�a um programa para imprimir:
    1
    1   2
    1   2   3
    .....
    1   2   3   ...  n
para um n informado pelo usu�rio. Use uma fun��o que receba um valor n inteiro imprima at� a n-�sima linha.
@type function
@author Ruan Henrique
@since 12/11/2023
/*/
User Function FUN02()
    Local nTotal := 0
    Local cMsg   := ""

    nTotal := Val(FwInputBox("Digite um n�mero: "))
    cMsg := Sequencia(nTotal)

    FwAlertInfo(cMsg)
Return

Static Function Sequencia(nTotal)
    Local nLinha := 0
    Local nNum   := 0
    Local cMsg   := ""

    For nLinha := 1 To nTotal
        For nNum := 1 To nLinha
            cMsg += AllTrim(Str(nNum)) + "   "
        Next
        cMsg += CRLF
    Next

Return cMsg









