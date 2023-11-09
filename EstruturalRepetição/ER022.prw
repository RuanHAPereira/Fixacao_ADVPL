#include 'Totvs.ch'

/*/{Protheus.doc} ER022
Altere o programa de cálculo dos números primos, informando, caso o número não seja primo, 
por quais número ele é divisível.
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

    nNumero := Val(FwInputBox("Digite um número inteiro para verificar se é primo: "))

    if nNumero <= 1
        FwAlertInfo("Um número primo deve ser maior que 1.")
    else
        for nCont := 2 to Int(Sqrt(nNumero)) // Verifica divisores até a raiz quadrada do número
            if nNumero % nCont == 0
                aDivisores := AAdd(aDivisores, nCont) // Adiciona o divisor à lista
            endif
        next

        if Empty(aDivisores)
            FwAlertInfo("O número " + AllTrim(Str(nNumero)) + " é um número primo.")
        else
            cDivisores := "O número " + AllTrim(Str(nNumero)) + " não é um número primo. Divisível por: "
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



