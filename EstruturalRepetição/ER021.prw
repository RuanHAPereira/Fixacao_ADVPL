#include 'Totvs.ch'

/*/{Protheus.doc} ER021
Faça um programa que peça um número inteiro e determine se ele é ou não um número primo. 
Um número primo é aquele que é divisível somente por ele mesmo e por 1
@type function
@author Ruan Henrique
@since 11/1/2023
/*/

user function ER021()

    local nNumero    := 0
    local nDivisores := 0
    local nCont      := 0

    nNumero := Val(FwInputBox("Digite um número inteiro para verificar se é primo: "))

    if nNumero <= 1
        FwAlertInfo("Um número primo deve ser maior que 1.")
    else
        for nCont := 1 to Int(Sqrt(nNumero)) // Verifica divisores até a raiz quadrada do número
            if nNumero % nCont == 0
                nDivisores := nDivisores + 1
                exit
            endif
        next

        if nDivisores == 0
            FwAlertInfo("O número " + AllTrim(Str(nNumero)) + " é um número primo.")
        else
            FwAlertInfo("O número " + AllTrim(Str(nNumero)) + " não é um número primo.")
        endif
    endif
return


