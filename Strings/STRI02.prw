#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI02
Nome ao contrário em maiúsculas. Faça um programa que permita ao usuário digitar o seu nome e em seguida mostre o nome do usuário
de trás para frente utilizando somente letras maiúsculas. 
Dica: lembre?se que ao informar o nome o usuário pode digitar letras maiúsculas ou minúsculas.
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI02()

    local aArea       := GetArea()
    local cNome       := ""
    local cNomeInvert := ""
    local nTamanho    := 0
    local nI := 0

    cNome := FwInputBox("Digite o seu nome: ")
    nTamanho := Len(cNome)

    for nI := nTamanho to 1 step -1
        cNomeInvert += SubStr(cNome, nI, 1)
    next

    FwAlertInfo("Nome original: " + cNome + CRLF + "Nome invertido: " + Upper(cNomeInvert))

    RestArea(aArea)
return

