#include 'Totvs.ch'

/*/{Protheus.doc} ER011
Altere o programa anterior para mostrar no final a soma dos n�meros.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER011()

    local nPrimeiro := 0
    local nSegundo  := 0
    local nValor    := 0
    local nSoma     := 0

    nPrimeiro := Val(FwInputBox("Digite o primeiro n�mero inteiro: "))
    nSegundo := Val(FwInputBox("Digite o segundo n�mero inteiro: "))

    if nSegundo < nPrimeiro
        FwAlertInfo("O segundo n�mero deve ser maior que o primeiro.")
    else
        FwAlertInfo("N�meros no intervalo entre " + AllTrim(Str(nPrimeiro)) + " e " + AllTrim(Str(nSegundo)) + ":")
        For nValor := nPrimeiro + 1 to nSegundo - 1
            nSoma := nSoma + nValor
        Next

        FwAlertInfo("A soma dos n�meros no intervalo �: " + AllTrim(Str(nSoma)))
    endif
return

