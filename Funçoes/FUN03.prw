#INCLUDE "totvs.ch"

/*/{Protheus.doc} Exercicio1
Fa�a um programa, com uma fun��o que necessite de tr�s argumentos, e que forne�a a soma desses tr�s argumentos.
@type function
@author Ruan Henrique
@since 12/18/2023
/*/

user function FUN03()

    local nNumero1 := Val(FwInputBox("Digite o primeiro n�mero: "))
    local nNumero2 := Val(FwInputBox("Digite o segundo n�mero: "))
    local nNumero3 := Val(FwInputBox("Digite o terceiro n�mero: "))

    local nSoma := SomaTres(nNumero1, nNumero2, nNumero3)

    FwAlertInfo("A soma dos tr�s n�meros �: " + AllTrim(Str(nSoma)))

return

static function SomaTres(nNum1, nNum2, nNum3)

    local nResultado := nNum1 + nNum2 + nNum3

return nResultado
