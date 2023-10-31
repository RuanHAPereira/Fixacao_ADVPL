#include 'Totvs.ch'

/*/{Protheus.doc} ER013
Fa�a um programa que pe�a dois n�meros, base e expoente, calcule e mostre o 
primeiro n�mero elevado ao segundo n�mero. N�o utilize a fun��o de pot�ncia da linguagem.
@type function
@author Ruan Henrique
@since 10/31/2023
/*/

user function ER013()

    local nBase      := 0
    local nExpoente  := 0
    local nResultado := 1
    local nCont := 0
    local lRet  := .T.

    nBase := Val(FwInputBox("Digite o n�mero base: "))
    nExpoente := Val(FwInputBox("Digite o expoente (um n�mero inteiro): "))

    if nExpoente % 1 <> 0
        FwAlertError("O expoente deve ser um n�mero inteiro.")
        lRet := .F.
    endif

    if lRet == .T.
        if nExpoente > 0
            For nCont := 1 to nExpoente
                nResultado := nResultado * nBase
            Next
        elseif nExpoente < 0
            For nCont := 1 to Abs(nExpoente)
                nResultado := nResultado / nBase
            Next
        endif

        FwAlertInfo("Resultado: " + AllTrim(Str(nResultado)))
    endif

Return(lRet)

