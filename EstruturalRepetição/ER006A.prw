#include 'Totvs.ch'

/*/{Protheus.doc} ER006A
Faça um programa que imprima na tela os números de 1 a 20, um abaixo do outro. 
Depois modifique o programa para que ele mostre os números um ao lado do outro.
@type function
@author Ruan Henrique
@since 10/27/2023
/*/

user function ER006A()

    Local nNumero := 0
    Local nCont   := 0
    Local cMsg1   := ''
    local cMsg2   := ''
    Local aArray1 := {}

    For nCont := 1 to 20
        nNumero := nCont
        AADD(aArray1, nNumero)
    Next

    For nCont := 1 to 20
        If nCont < 20
            cMsg1 += (ALLTRIM(STR(aArray1[nCont])) + ',' + CRLF)
        Else
            cMsg1 += (ALLTRIM(STR(aArray1[nCont])) + '.')
        Endif
    Next

    For nCont := 1 to 20
        If nCont < 20
            cMsg2 += (ALLTRIM(STR(aArray1[nCont])) + ',')
        Else
            cMsg2 += (ALLTRIM(STR(aArray1[nCont])) + '.')
        Endif
    Next

    FwAlertSuccess('Os numeros em sequencia: ' + cMsg1 + CRLF + "Os numeros a cada linha: " + CRLF + cMsg2)   

return
