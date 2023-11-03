#include 'Totvs.ch'

/*/{Protheus.doc} ER011
Altere o programa anterior para mostrar no final a soma dos números.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER011()

    local nPrimeiro := 0
    local nSegundo  := 0
    local nValor    := 0
    local nSoma     := 0

    nPrimeiro := Val(FwInputBox("Digite o primeiro número inteiro: "))
    nSegundo := Val(FwInputBox("Digite o segundo número inteiro: "))

    if nSegundo < nPrimeiro
        FwAlertInfo("O segundo número deve ser maior que o primeiro.")
    else
        FwAlertInfo("Números no intervalo entre " + AllTrim(Str(nPrimeiro)) + " e " + AllTrim(Str(nSegundo)) + ":")
        For nValor := nPrimeiro + 1 to nSegundo - 1
            nSoma := nSoma + nValor
        Next

        FwAlertInfo("A soma dos números no intervalo é: " + AllTrim(Str(nSoma)))
    endif
return

