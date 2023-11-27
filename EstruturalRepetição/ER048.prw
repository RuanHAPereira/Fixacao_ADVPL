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

    local nNumero        := 0
    local nNumInvert     := 0
    local nDigito        := 0
    local lRet           := .T.
    
    nNumero := Val(FwInputBox("Digite um número inteiro positivo: "))

    do while .T.
        if nNumero < 0
            FwAlertError("Por favor, digite um número inteiro positivo.")
            lRet := .F.
        endif

        // Inverter o número manualmente
        nNumInvert := 0
        while nNumero > 0
            nDigito := Mod(nNumero, 10)
            nNumInvert := nNumInvert * 10 + nDigito
            nNumero := Int(nNumero / 10)
        enddo

    
    enddo

    FwAlertInfo("Número invertido: " + AllTrim(Str(nNumInvert)))

return(lRet)


