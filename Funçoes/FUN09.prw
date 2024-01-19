#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN09
Reverso do número. Faça uma função que retorne o reverso de um número inteiro informado.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/
user function FUN09()

    local nNumero  := 0
    local nReverso := 0

    nNumero := Val(FwInputBox("Digite um número inteiro: "))

    nReverso := Reverse(nNumero)

    FwAlertInfo("O reverso do número " + AllTrim(Str(nNumero)) + " é " + AllTrim(Str(nReverso)) + ".")

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



