#include 'Totvs.ch'

/*/{Protheus.doc} ER035
Encontrar n�meros primos � uma tarefa dif�cil. Fa�a um programa que gera uma lista dos n�meros primos 
existentes entre 1 e um n�mero inteiro informado pelo usu�rio.
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

    nLimite := Val(FwInputBox("Digite um n�mero inteiro para encontrar os n�meros primos at� esse limite: "))

    if nLimite < 2
        FwAlertInfo("N�o existem n�meros primos at� " + AllTrim(Str(nLimite)))
    else
        FwAlertInfo("N�meros primos at� " + AllTrim(Str(nLimite)) + ":")

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

        FwAlertInfo(cMsg + ".", "N�meros primos encontrados.")
    endif

return(lRet)




