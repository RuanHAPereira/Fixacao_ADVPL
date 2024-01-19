#INCLUDE "Totvs.ch"

//? Testado e ok.

/*/{Protheus.doc} STRI05
Nome na vertical em escada invertida. Altere o programa anterior de modo que a escada seja invertida.

FULANO
FULAN
FULA
FUL
FU
F
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI05()

    local cNome := ""
    local nI    := 0
    local cMsg  := ""

    cNome := FwInputBox("Digite o seu nome: ")

    for nI := Len(cNome) to 1 step -1
        cMsg += SubStr(cNome, 1, nI) + CRLF //? Adiciona o nome e uma quebra de linha
    next

    FwAlertInfo(cMsg)
return
