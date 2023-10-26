#include 'Totvs.ch'

/*/{Protheus.doc} ED023
Faça um Programa que peça um número e informe se o número é inteiro ou decimal. 
Dica: utilize uma função de arredondamento.
@type function
@author Ruan Henrique
@since 10/24/2023
/*/

user function ED023()

    local nNumero    := 0
    local nResultado := 0

    nNumero := Val(FwInputBox("Informe um número: "))

    nResultado := ROUND(nNumero, 0)

    IF nNumero - nResultado == 0
        FwAlertInfo("O número informado é um número inteiro.")
    ELSE
        FwAlertInfo("O número informado é um número decimal.")
    ENDIF

return
