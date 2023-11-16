#include 'Totvs.ch'

/*/{Protheus.doc} ER022
Altere o programa de cálculo dos números primos, informando, caso o número não seja primo, 
por quais número ele é divisível.
@type function
@author Ruan Henrique
@since 11/6/2023
/*/

user function ER022()

    local nNumero    := 0
    local cDivisores := ''
    local nCont      := 0
    local lRet       := .F.

    nNumero := Val(FwInputBox("Digite um número inteiro para verificar se é primo: "))

    if nNumero <= 1
        FwAlertInfo("Um número primo deve ser maior que 1.")
    else
        for nCont := 2 to Int(Sqrt(nNumero)) //? Verifica divisores até a raiz quadrada do número
            if nNumero % nCont == 0
                lRet := .T.
                cDivisores := cDivisores + AllTrim(Str(nCont)) + ", "
            endif
        next

        if lRet
            cDivisores := SubStr(cDivisores, 1, Len(cDivisores) - 2) //? Remove a última vírgula e espaço
            FwAlertInfo("O número " + AllTrim(Str(nNumero)) + " não é um número primo. Divisível por: " + cDivisores)
        else
            FwAlertInfo("O número " + AllTrim(Str(nNumero)) + " é um número primo.")
        endif
    endif
return
