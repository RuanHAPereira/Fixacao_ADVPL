#include 'Totvs.ch'

/*/{Protheus.doc} ER022
Altere o programa de c�lculo dos n�meros primos, informando, caso o n�mero n�o seja primo, 
por quais n�mero ele � divis�vel.
@type function
@author Ruan Henrique
@since 11/6/2023
/*/

user function ER022()

    local nNumero := 0
    local aDivisores := {}
    local nCont := 0
    local cDivisores := ''
    local nI := 0

    nNumero := Val(FwInputBox("Digite um n�mero inteiro para verificar se � primo: "))

    if nNumero <= 1
        FwAlertInfo("Um n�mero primo deve ser maior que 1.")
    else
        for nCont := 2 to Int(Sqrt(nNumero)) // Verifica divisores at� a raiz quadrada do n�mero
            if nNumero % nCont == 0
                aDivisores := AAdd(aDivisores, nCont) // Adiciona o divisor � lista
            endif
        next

        if Empty(aDivisores)
            FwAlertInfo("O n�mero " + AllTrim(Str(nNumero)) + " � um n�mero primo.")
        else
            cDivisores := "O n�mero " + AllTrim(Str(nNumero)) + " n�o � um n�mero primo. Divis�vel por: "
            for nI := 1 to Len(aDivisores)
                cDivisores := cDivisores + AllTrim(Str(aDivisores[nI]))
                if nI < Len(aDivisores)
                    cDivisores := cDivisores + ", "
                endif
            next
            FwAlertInfo(cDivisores)
        endif
    endif
return



