#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN09
Reverso do n�mero. Fa�a uma fun��o que retorne o reverso de um n�mero inteiro informado.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/
user function FUN09()

    local nNumero  := 0
    local nReverso := 0

    nNumero := Val(FwInputBox("Digite um n�mero inteiro: "))

    nReverso := Reverse(nNumero)

    FwAlertInfo("O reverso do n�mero " + AllTrim(Str(nNumero)) + " � " + AllTrim(Str(nReverso)) + ".")

return

static function Reverse(nNumero)

    local nI       := 0
    local cReverso := ""
    local cNumero  := ''

    cNumero := AllTrim(Str(nNumero))

    //? Inverte a ordem dos caracteres
    for nI := Len(cNumero) to 1 step -1
        cReverso += SubStr(cNumero, nI, 1)
    next

return Val(cReverso)



