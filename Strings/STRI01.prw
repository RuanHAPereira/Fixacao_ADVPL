#INCLUDE "Totvs.ch"

//? Testado e ok, tanto com strings diferentes quanto com strings de mesmo tamanho e conteudo.
/*/{Protheus.doc} STRI01
Tamanho de strings. Fa�a um programa que leia 2 strings e informe o conte�do delas seguido do seu comprimento. 
Informe tamb�m se as duas strings possuem o mesmo comprimento e s�o iguais ou diferentes no conte�do.

Compara duas strings
String 1: Brasil Hexa 2006
String 2: Brasil! Hexa 2006!
Tamanho de "Brasil Hexa 2006": 16 caracteres
Tamanho de "Brasil! Hexa 2006!": 18 caracteres
As duas strings s�o de tamanhos diferentes.
As duas strings possuem conte�do diferente.
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

User Function STRI01()

    Local aArea    := GetArea()
    Local cString1 := ""
    Local cString2 := ""
    Local nTamanho1 := 0
    Local nTamanho2 := 0
    Local cMsg      := ""

    cString1 := FwInputBox("Digite a primeira string: ")
    cString2 := FwInputBox("Digite a segunda string: ")

    cMsg += "String 1: " + cString1 + CRLF
    cMsg += "String 2: " + cString2 + CRLF

    nTamanho1 := Len(cString1)
    nTamanho2 := Len(cString2)

    cMsg += "Tamanho da string " + cString1 + " : cont�m "  + AllTrim(Str(nTamanho1)) + " caracteres" + CRLF
    cMsg += "Tamanho de string " + cString2 + " : cont�m "  + AllTrim(Str(nTamanho2)) + " caracteres" + CRLF

    if nTamanho1 == nTamanho2
        cMsg += "As duas strings t�m o mesmo comprimento." + CRLF
    else
        cMsg += "As duas strings t�m comprimentos diferentes." + CRLF
    endif

    if cString1 == cString2
        cMsg += "As duas strings possuem o mesmo conte�do." + CRLF
    else
        cMsg += "As duas strings possuem conte�do diferente." + CRLF
    endif

    FwAlertInfo(cMsg)
    RestArea(aArea)
Return
