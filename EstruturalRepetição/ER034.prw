#include 'Totvs.ch'

/*/{Protheus.doc} ER034
Os números primos possuem várias aplicações dentro da Computação, por exemplo na Criptografia. 
Um número primo é aquele que é divisível apenas por um e por ele mesmo. 
Faça um programa que peça um número inteiro e determine se ele é ou não um número primo.
@type function
@author Ruan Henrique
@since 11/14/2023
/*/
user function ER034()

    local nNum     := 0
    local nCont    := 0
    local nDivisor := 0

    nNum := Val(FwInputBox("Digite um número inteiro para verificar se é primo: "))
    nNum := INT( nNum )

    if nNum <= 1
        FwAlertInfo("Um número primo deve ser maior que 1.")
    else
        for nCont := 2 to Int(Sqrt(nNum))
            if MOD(nNum, nCont) == 0
                nDivisor := nDivisor + 1
                exit
            endif
        next

        if nDivisor == 0
            FwAlertInfo("O número " + AllTrim(Str(nNum)) + " é um número primo.")
        else
            FwAlertInfo("O número " + AllTrim(Str(nNum)) + " não é um número primo.")
        endif
    endif

return


