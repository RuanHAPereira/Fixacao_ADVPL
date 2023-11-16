#include 'Totvs.ch'

/*/{Protheus.doc} ER023
Faça um programa que mostre todos os primos entre 1 e N sendo N um número inteiro fornecido pelo usuário. 
O programa deverá mostrar também o número de divisões que ele executou para encontrar os números primos. 
Serão avaliados o funcionamento, o estilo e o número de testes (divisões) executados.
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
                // nCont não é primo
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

    cMsg += CRLF + "Número total de divisões: " + AllTrim(Str(nDivisoes))
    FwAlertInfo("Numeros primos encontrados entre 1 e " + alltrim(str(nNum)) + ": " + cMsg)

return
