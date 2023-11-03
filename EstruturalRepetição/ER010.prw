#include 'Totvs.ch'

/*/{Protheus.doc} ER010
Fa�a um programa que receba dois n�meros inteiros e gere os n�meros inteiros que est�o
 no intervalo compreendido por eles.
@type function
@author Ruan Henrique
@since 10/30/2023
/*/

User Function ER010()

    Local nPrimeiro := 0
    Local nSegundo  := 0
    Local nValor    := 0
    local cMsg      := ''

    nPrimeiro := Val(FwInputBox("Digite o primeiro n�mero inteiro: "))
    nSegundo := Val(FwInputBox("Digite o segundo n�mero inteiro: "))

    If nSegundo < nPrimeiro
        FwAlertInfo("O segundo n�mero deve ser maior que o primeiro.")
    Else
        FwAlertInfo("N�meros no intervalo entre " + AllTrim(Str(nPrimeiro)) + " e " + AllTrim(Str(nSegundo)) + ":")
        For nValor := nPrimeiro + 1 to nSegundo - 1
            cMsg += (AllTrim(str(nValor) + ' , '))
            
        Next
    EndIf

    FwAlertInfo('S�o :' + cMsg)
    
Return



