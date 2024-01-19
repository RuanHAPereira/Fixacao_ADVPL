#INCLUDE "Totvs.ch"

//? Testado e ok, tanto com strings diferentes quanto com strings de mesmo tamanho e conteudo.
/*/{Protheus.doc} STRI01
Tamanho de strings. Faça um programa que leia 2 strings e informe o conteúdo delas seguido do seu comprimento. 
Informe também se as duas strings possuem o mesmo comprimento e são iguais ou diferentes no conteúdo.

Compara duas strings
String 1: Brasil Hexa 2006
String 2: Brasil! Hexa 2006!
Tamanho de "Brasil Hexa 2006": 16 caracteres
Tamanho de "Brasil! Hexa 2006!": 18 caracteres
As duas strings são de tamanhos diferentes.
As duas strings possuem conteúdo diferente.
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
        fwalertinfo("As duas strings têm o mesmo comprimento.")
    else
        fwalertinfo("As duas strings têm comprimentos diferentes.")
    endif

    if cString1 == cString2
        fwalertinfo("As duas strings possuem o mesmo conteúdo.")
    else
        fwalertinfo("As duas strings possuem conteúdo diferente.")
    endif
Return
