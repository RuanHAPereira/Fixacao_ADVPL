#include 'Totvs.ch'

/*/{Protheus.doc} ER011
Altere o programa anterior para mostrar no final a soma dos números.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER011()

    Local nPrimeiro := 0
    Local nSegundo  := 0
    Local nValor    := 0
    Local nSoma     := 0

    nPrimeiro := Val(FwInputBox("Digite o primeiro número inteiro: "))
    nSegundo := Val(FwInputBox("Digite o segundo número inteiro: "))

    If nSegundo < nPrimeiro
        FwAlertInfo("O segundo número deve ser maior que o primeiro.")
    Else
        FwAlertInfo("Números no intervalo entre " + AllTrim(Str(nPrimeiro)) + " e " + AllTrim(Str(nSegundo)) + ":")
        For nValor := nPrimeiro to nSegundo
            nSoma := nSoma + nValor
        Next

        FwAlertInfo("A soma dos números no intervalo é: " + AllTrim(Str(nSoma)))
    EndIf
return

