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

    local nNumero        := 0
    local nNumInvert     := 0
    local nDigito        := 0
    local lRet           := .T.
    
    nNumero := Val(FwInputBox("Digite um n�mero inteiro positivo: "))

    do while .T.
        if nNumero < 0
            FwAlertError("Por favor, digite um n�mero inteiro positivo.")
            lRet := .F.
        endif

        // Inverter o n�mero manualmente
        nNumInvert := 0
        while nNumero > 0
            nDigito := Mod(nNumero, 10)
            nNumInvert := nNumInvert * 10 + nDigito
            nNumero := Int(nNumero / 10)
        enddo

    
    enddo

    FwAlertInfo("N�mero invertido: " + AllTrim(Str(nNumInvert)))

return(lRet)


