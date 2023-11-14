#include 'Totvs.ch'

/*/{Protheus.doc} ER021
Fa�a um programa que pe�a um n�mero inteiro e determine se ele � ou n�o um n�mero primo. 
Um n�mero primo � aquele que � divis�vel somente por ele mesmo e por 1
@type function
@author Ruan Henrique
@since 11/1/2023
/*/

user function ER021()

    local nNumero    := 0
    local nDivisores := 0
    local nCont      := 0

    nNumero := Val(FwInputBox("Digite um n�mero inteiro para verificar se � primo: "))

    if nNumero <= 1
        FwAlertInfo("Um n�mero primo deve ser maior que 1.")
    else
        for nCont := 1 to Int(Sqrt(nNumero)) // Verifica divisores at� a raiz quadrada do n�mero
            if nNumero % nCont == 0
                nDivisores := nDivisores + 1
                exit
            endif
        next

        if nDivisores == 0
            FwAlertInfo("O n�mero " + AllTrim(Str(nNumero)) + " � um n�mero primo.")
        else
            FwAlertInfo("O n�mero " + AllTrim(Str(nNumero)) + " n�o � um n�mero primo.")
        endif
    endif
return


