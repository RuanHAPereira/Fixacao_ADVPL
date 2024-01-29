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
    Local nLinha := 0
    Local nNum   := 0
    Local cMsg   := ""
    Local nTotal := 0

    nTotal := Val(FwInputBox("Digite um numero: "))

    for nLinha := 1 to nTotal
        for nNum := 1 to nLinha
            cMsg += AllTrim(Str(nNum)) + "   "
        next
        cMsg += CRLF  
    next

    FwAlertInfo(cMsg) 

Return

Static Function Sequencia(nTotal)
    Local nLinha := 0
    Local nNum   := 0
    Local cMsg   := ""

    for nLinha := 1 to nTotal
        for nNum := 1 to nLinha
            cMsg += AllTrim(Str(nNum)) + "   "
        next
        cMsg += CRLF 
    next

    Return cMsg
Return








