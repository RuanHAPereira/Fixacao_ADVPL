#INCLUDE "Totvs.ch"

//? Testado e ok.
/*/{Protheus.doc} STRI04
Nome na vertical em escada. Modifique o programa anterior de forma a mostrar o nome em formato de escada.

F
FU
FUL
FULA
FULAN
FULANO
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI04()

    local aArea   := GetArea()
    local cNome   := ""
    local nCont   := 1  //? Iniciado com um para nao repetir a primeira letra
    local cEscada := "" //? Variável para acumular os caracteres da escada
    local cMsg    := ""
 
    cNome := FwInputBox("Digite o seu nome: ")

    while nCont <= Len(cNome)
        cEscada += SubStr(cNome, nCont, 1)
        cMsg += cEscada + CRLF
        nCont++
    enddo

    FwAlertInfo(Upper(cMsg))

    RestArea(aArea)
return
