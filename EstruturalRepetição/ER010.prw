#include 'Totvs.ch'

/*/{Protheus.doc} ER010
Faça um programa que receba dois números inteiros e gere os números inteiros que estão
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

    nPrimeiro := Val(FwInputBox("Digite o primeiro número inteiro: "))
    nSegundo := Val(FwInputBox("Digite o segundo número inteiro: "))

    If nSegundo < nPrimeiro
        FwAlertInfo("O segundo número deve ser maior que o primeiro.")
    Else
        FwAlertInfo("Números no intervalo entre " + AllTrim(Str(nPrimeiro)) + " e " + AllTrim(Str(nSegundo)) + ":")
        For nValor := nPrimeiro + 1 to nSegundo - 1
            cMsg += (AllTrim(str(nValor) + ' , '))
            
        Next
    EndIf

    FwAlertInfo('São :' + cMsg)
    
Return



