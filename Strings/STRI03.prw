#INCLUDE "Totvs.ch"

//?Testado e ok.

/*/{Protheus.doc} STRI03
Nome na vertical. Faça um programa que solicite o nome do usuário e imprima-o na vertical.

F
U
L
A
N
O
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI03()

    local cNome := ""
    local nI    := 1 //? Iniciado com 1 para que nao repita a primeira letra
    local cMsg  := ""

    cNome := FwInputBox("Digite o seu nome: ")

    // Loop para imprimir o nome na vertical
    while nI <= Len(cNome)
        cMsg +=(SubStr(cNome, nI, 1)) + CRLF
        nI++
    enddo

    FwAlertInfo(cMsg)
return
