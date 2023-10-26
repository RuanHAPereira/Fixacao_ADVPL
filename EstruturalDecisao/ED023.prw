#include 'Totvs.ch'

/*/{Protheus.doc} ED023
Fa�a um Programa que pe�a um n�mero e informe se o n�mero � inteiro ou decimal. 
Dica: utilize uma fun��o de arredondamento.
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED023()

    local nNumero    := 0
    local nResultado := 0

    nNumero := Val(FwInputBox("Informe um n�mero: "))

    nResultado := ROUND(nNumero, 0)

    IF nNumero - nResultado == 0
        FwAlertInfo("O n�mero informado � um n�mero inteiro.")
    ELSE
        FwAlertInfo("O n�mero informado � um n�mero decimal.")
    ENDIF

return
