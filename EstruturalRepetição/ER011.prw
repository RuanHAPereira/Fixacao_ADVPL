#include 'Totvs.ch'

/*/{Protheus.doc} ER011
Altere o programa anterior para mostrar no final a soma dos n�meros.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER011()

    Local nPrimeiro := 0
    Local nSegundo  := 0
    Local nValor    := 0
    Local nSoma     := 0

    nPrimeiro := Val(FwInputBox("Digite o primeiro n�mero inteiro: "))
    nSegundo := Val(FwInputBox("Digite o segundo n�mero inteiro: "))

    If nSegundo < nPrimeiro
        FwAlertInfo("O segundo n�mero deve ser maior que o primeiro.")
    Else
        FwAlertInfo("N�meros no intervalo entre " + AllTrim(Str(nPrimeiro)) + " e " + AllTrim(Str(nSegundo)) + ":")
        For nValor := nPrimeiro to nSegundo
            nSoma := nSoma + nValor
        Next

        FwAlertInfo("A soma dos n�meros no intervalo �: " + AllTrim(Str(nSoma)))
    EndIf
return

