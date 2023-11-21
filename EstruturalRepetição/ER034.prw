#include 'Totvs.ch'

/*/{Protheus.doc} ER034
Os n�meros primos possuem v�rias aplica��es dentro da Computa��o, por exemplo na Criptografia. 
Um n�mero primo � aquele que � divis�vel apenas por um e por ele mesmo. 
Fa�a um programa que pe�a um n�mero inteiro e determine se ele � ou n�o um n�mero primo.
@type function
@author Ruan Henrique
@since 11/14/2023
/*/
user function ER034()

    local nNum     := 0
    local nCont    := 0
    local nDivisor := 0

    nNum := Val(FwInputBox("Digite um n�mero inteiro para verificar se � primo: "))
    nNum := INT( nNum )

    if nNum <= 1
        FwAlertInfo("Um n�mero primo deve ser maior que 1.")
    else
        for nCont := 2 to Int(Sqrt(nNum))
            if MOD(nNum, nCont) == 0
                nDivisor := nDivisor + 1
                exit
            endif
        next

        if nDivisor == 0
            FwAlertInfo("O n�mero " + AllTrim(Str(nNum)) + " � um n�mero primo.")
        else
            FwAlertInfo("O n�mero " + AllTrim(Str(nNum)) + " n�o � um n�mero primo.")
        endif
    endif

return


