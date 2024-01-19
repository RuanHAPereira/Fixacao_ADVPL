#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN08
Faça uma função que informe a quantidade de dígitos de um determinado número inteiro informado.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN08()

    local nNumero   := 0
    local nQtdDigit := 0

    nNumero := Val(FwInputBox("Digite um número inteiro: "))

    nQtdDigit := QtdDigito(nNumero)

    FwAlertInfo("O número " + AllTrim(Str(nNumero)) + " possui " + AllTrim(Str(nQtdDigit)) + " dígitos.")

return

static function QtdDigito(nNumero)

    local cNumero := ''
    
    cNumero := AllTrim(Str(nNumero))

return Len(cNumero)

