#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} ED006A
Fa�a um Programa que leia tr�s n�meros e mostre o maior deles.
@type function
@author Ruan Henrique
@since 10/18/2023
/*/

USER FUNCTION ED006A()

    local nNumero1 := 0
    local nNumero2 := 0
    local nNumero3 := 0
    local nMaior   := 0
    
    nNumero1 := Val(FwInputBox("Digite o primeiro n�mero:"))
    nNumero2 := Val(FwInputBox("Digite o segundo n�mero:"))
    nNumero3 := Val(FwInputBox("Digite o terceiro n�mero:"))

    IF nNumero1 > nMaior
        nMaior := nNumero1
    ELSEIF nNumero2 > nMaior
        nMaior := nNumero2
    ELSEIF nNumero3 > nMaior
        nMaior := nNumero3
    ENDIF

    FwAlertInfo("O maior n�mero �: " + Alltrim(STR(nMaior)))
    
RETURN

