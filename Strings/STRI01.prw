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

user function STRI01()

    local cString1 := ""
    local cString2 := ""
    local nTamanho1 := 0
    local nTamanho2 := 0

    cString1 := fwinputbox("Digite a primeira string: ")
    cString2 := fwinputbox("Digite a segunda string: ")

    fwalertinfo("String 1: " + cString1)
    fwalertinfo("String 2: " + cString2)

    nTamanho1 := len(cString1)
    nTamanho2 := len(cString2)

    fwalertinfo("Tamanho de " + cString1 + ":"  + alltrim(str(nTamanho1)) + " caracteres")
    fwalertinfo("Tamanho de " + cString2 + ":"  + alltrim(str(nTamanho2)) + " caracteres")

    if nTamanho1 == nTamanho2
        fwalertinfo("As duas strings t�m o mesmo comprimento.")
    else
        fwalertinfo("As duas strings t�m comprimentos diferentes.")
    endif

    if cString1 == cString2
        fwalertinfo("As duas strings possuem o mesmo conte�do.")
    else
        fwalertinfo("As duas strings possuem conte�do diferente.")
    endif
Return
