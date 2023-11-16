#include 'Totvs.ch'

/*/{Protheus.doc} ER023
Fa�a um programa que mostre todos os primos entre 1 e N sendo N um n�mero inteiro fornecido pelo usu�rio. 
O programa dever� mostrar tamb�m o n�mero de divis�es que ele executou para encontrar os n�meros primos. 
Ser�o avaliados o funcionamento, o estilo e o n�mero de testes (divis�es) executados.
@type function
@author Ruan Henrique
@since 11/16/2023
/*/

user function ER023()

    local nNum         := 0
    local cMsg         := ""
    local nDivisoes    := 0
    local nCont        := 0
    local nDivisor     := 0
    local lRet         := .T.

    nNum := Val(FwInputBox("Digite o valor de N: "))

    for nCont := 2 to nNum
        lRet := .T.
        nDivisor := 2

        do while nDivisor <= Int(Sqrt(nCont))
            nDivisoes := nDivisoes + 1
            if Mod(nCont, nDivisor) == 0
                // nCont n�o � primo
                lRet := .F.
                Exit
            endif
            nDivisor := nDivisor + 1
        enddo

        if lRet
            if !Empty(cMsg)
                cMsg += ", "
            endif
            cMsg += AllTrim(Str(nCont))
        endif
    next

    cMsg += CRLF + "N�mero total de divis�es: " + AllTrim(Str(nDivisoes))
    FwAlertInfo("Numeros primos encontrados entre 1 e " + alltrim(str(nNum)) + ": " + cMsg)

return
