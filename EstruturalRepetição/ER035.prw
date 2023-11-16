#include 'Totvs.ch'

/*/{Protheus.doc} ER035
Encontrar números primos é uma tarefa difícil. Faça um programa que gera uma lista dos números primos 
existentes entre 1 e um número inteiro informado pelo usuário.
@type function
@author Ruan Henrique
@since 11/14/2023
/*/
user function ER035()

    local nLimite := 0
    local nCont1  := 0
    local nCont2  := 0
    local lRet    := .T.
    local cMsg    := ""

    nLimite := Val(FwInputBox("Digite um número inteiro para encontrar os números primos até esse limite: "))

    if nLimite < 2
        FwAlertInfo("Não existem números primos até " + AllTrim(Str(nLimite)))
    else
        FwAlertInfo("Números primos até " + AllTrim(Str(nLimite)) + ":")

        for nCont1 := 2 to nLimite
            lRet := .T.

            for nCont2 := 2 to Int(Sqrt(nCont1))
                if MOD(nCont1, nCont2) == 0
                    lRet := .F.
                    exit
                endif
            next

            if lRet
                if !Empty(cMsg)
                    cMsg += ", "
                endif
                cMsg += AllTrim(Str(nCont1))
            endif
        next

        FwAlertInfo(cMsg + ".", "Números primos encontrados.")
    endif

return(lRet)




