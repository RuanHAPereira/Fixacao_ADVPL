#include 'Totvs.ch'

/*/{Protheus.doc} ER006A
Faça um programa que imprima na tela os números de 1 a 20, um abaixo do outro. 
Depois modifique o programa para que ele mostre os números um ao lado do outro.
@type function
@author Ruan Henrique
@since 10/27/2023
/*/

user function ER006B()

    local nNumero := 0
    local nCont   := 0
    local cMsg1   := ''
    local cMsg2   := ''
    local aArray1 := {}

    for nCont := 1 to 20
        nNumero := nCont
        AADD(aArray1, nNumero)
    next

    for nCont := 1 to 20
        if nCont < 20
            cMsg1 += (ALLTRIM(STR(aArray1[nCont])) + ',' + CHR(13) + CHR(10))
        else
            cMsg1 += (ALLTRIM(STR(aArray1[nCont])) + '.')
        endif
    next

    for nCont := 1 to 20
        if nCont < 20
            cMsg2 += (ALLTRIM(STR(aArray1[nCont])) + ',')
        else
            cMsg2 += (ALLTRIM(STR(aArray1[nCont])) + '.')
        endif
    next

    FwAlertSuccess('Os numeros em sequencia: ' + cMsg1 + "Os numeros a cada linha: " + cMsg2)   

    FWLogMsg("INFO",,"Teste 1",,,,"Teste 2",,,,)
return


