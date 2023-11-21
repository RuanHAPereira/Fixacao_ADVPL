#include 'Totvs.ch'

/*/{Protheus.doc} ER048
Fa�a um programa que pe�a um n�mero inteiro positivo e em seguida mostre este n�mero invertido.
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

    nNumero := Val(FwInputBox("Digite um n�mero inteiro positivo: "))

    // Verificar se o n�mero � positivo
    if nNumero <= 0
        FwAlertError("Por favor, digite um n�mero inteiro positivo.")
        return
    endif

    // Inverter o n�mero
    cNumInvert := StrReverse(Transform(nNumero, "9999999999"))

    // Exibir o n�mero invertido
    FwAlertInfo("N�mero invertido: " + cNumInvert)

return
