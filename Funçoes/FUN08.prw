#include "totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} FUN08
Fa�a uma fun��o que informe a quantidade de d�gitos de um determinado n�mero inteiro informado.
@type function
@author Ruan Henrique
@since 12/20/2023
/*/

user function FUN08()

    local aArea     := GetArea()
    local nNumero   := 0
    local nQtdDigit := 0

    nNumero := Val(FwInputBox("Digite um n�mero inteiro: "))

    nQtdDigit := QtdDigito(nNumero)

    FwAlertInfo("O n�mero " + AllTrim(Str(nNumero)) + " possui " + AllTrim(Str(nQtdDigit)) + " d�gitos.")

    RestArea(aArea)
return

static function QtdDigito(nNumero)

    local cNumero := ''
    
    cNumero := AllTrim(Str(nNumero))

return Len(cNumero)

