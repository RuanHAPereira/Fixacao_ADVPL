#INCLUDE "TOTVS.CH"

USER FUNCTION ED006()

    local nNumero1 := 0
    local nNumero2 := 0
    local nNumero3 := 0
    local nMaior   := 0
    
    nNumero1 := Val(FwInputBox("Digite o primeiro n�mero:"))
    nNumero2 := Val(FwInputBox("Digite o segundo n�mero:"))
    nNumero3 := Val(FwInputBox("Digite o terceiro n�mero:"))

    if nNumero1 > nMaior
        nMaior := nNumero1
    endif

    if nNumero2 > nMaior
        nMaior := nNumero2
    endif

    if nNumero3 > nMaior
        nMaior := nNumero3
    endif

    FwAlertInfo("O maior n�mero �: " + Alltrim(STR(nMaior)))
    
RETURN

