#include 'Totvs.ch'

/*/{Protheus.doc} ER048
Faça um programa que peça um número inteiro positivo e em seguida mostre este número invertido.
Exemplo:
12376489
=> 98467321
@type function
@author Ruan Henrique
@since 11/20/2023
/*/

user function ER048()

    local nNumero := 0
    local cNumInvert := ""

    nNumero := Val(FwInputBox("Digite um número inteiro positivo: "))

    // Verificar se o número é positivo
    if nNumero <= 0
        FwAlertError("Por favor, digite um número inteiro positivo.")
        return
    endif

    // Inverter o número
    cNumInvert := StrReverse(Transform(nNumero, "9999999999"))

    // Exibir o número invertido
    FwAlertInfo("Número invertido: " + cNumInvert)

return
