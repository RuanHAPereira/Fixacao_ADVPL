#include 'Totvs.ch'

/*/{Protheus.doc} ER049
Fa�a um programa que mostre os n termos da S�rie a seguir:
S = 1/1 + 2/3 + 3/5 + 4/7 + 5/9 + ... + n/m.
Imprima no final a soma da s�rie.
@type function
@author Ruan Henrique
@since 11/20/2023
/*/

user function ER049()

    local nTermos := 0
    local nCont   := 0
    local nNumera := 1
    local nDenomi := 1
    local nSoma   := 0
    local cMsg    := ""

    nTermos := Val(FwInputBox("Digite o n�mero de termos (n) da s�rie: "))

    for nCont := 1 to nTermos
        nSoma := nSoma + (nNumera / nDenomi)
        cMsg += AllTrim(Str(nNumera)) + "/" + AllTrim(Str(nDenomi))

        if nCont < nTermos
            cMsg += " + "
        endif

        nNumera := nNumera + 1
        nDenomi := nDenomi + 2
    next

    fwalertinfo("S�rie com " + AllTrim(Str(nTermos)) + " termos: " + cMsg)

return

