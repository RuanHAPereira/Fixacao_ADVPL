#INCLUDE "totvs.ch"

/*/{Protheus.doc} Exercicio1
Faça um programa, com uma função que necessite de três argumentos, e que forneça a soma desses três argumentos.
@type function
@author Ruan Henrique
@since 12/18/2023
/*/

user function FUN03()

    local nNumero1 := Val(FwInputBox("Digite o primeiro número: "))
    local nNumero2 := Val(FwInputBox("Digite o segundo número: "))
    local nNumero3 := Val(FwInputBox("Digite o terceiro número: "))

    local nSoma := SomaTres(nNumero1, nNumero2, nNumero3)

    FwAlertInfo("A soma dos três números é: " + AllTrim(Str(nSoma)))

return

static function SomaTres(nNum1, nNum2, nNum3)

    local nResultado := nNum1 + nNum2 + nNum3

return nResultado
