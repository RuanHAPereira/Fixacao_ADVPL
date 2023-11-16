#include 'Totvs.ch'

/*/{Protheus.doc} ER022
Altere o programa de c�lculo dos n�meros primos, informando, caso o n�mero n�o seja primo, 
por quais n�mero ele � divis�vel.
@type function
@author Ruan Henrique
@since 11/6/2023
/*/

user function ER022()

    local nNumero    := 0
    local cDivisores := ''
    local nCont      := 0
    local lRet       := .F.

    nNumero := Val(FwInputBox("Digite um n�mero inteiro para verificar se � primo: "))

    if nNumero <= 1
        FwAlertInfo("Um n�mero primo deve ser maior que 1.")
    else
        for nCont := 2 to Int(Sqrt(nNumero)) //? Verifica divisores at� a raiz quadrada do n�mero
            if nNumero % nCont == 0
                lRet := .T.
                cDivisores := cDivisores + AllTrim(Str(nCont)) + ", "
            endif
        next

        if lRet
            cDivisores := SubStr(cDivisores, 1, Len(cDivisores) - 2) //? Remove a �ltima v�rgula e espa�o
            FwAlertInfo("O n�mero " + AllTrim(Str(nNumero)) + " n�o � um n�mero primo. Divis�vel por: " + cDivisores)
        else
            FwAlertInfo("O n�mero " + AllTrim(Str(nNumero)) + " � um n�mero primo.")
        endif
    endif
return
