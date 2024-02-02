#INCLUDE "Totvs.ch"

//?testado e ok.

/*/{Protheus.doc} STRI07
Conta espaços e vogais. Dado uma string com uma frase informada pelo usuário (incluindo espaços em branco), conte:

quantos espaços em branco existem na frase.
quantas vezes aparecem as vogais a, e, i, o, u.
@type function
@author Ruan Henrique
@since 1/16/2024
/*/

user function STRI07()

    local aArea      := GetArea()
    local cFrase     := ""
    local nEspacos   := 0
    local nVogaisA   := 0
    local nVogaisE   := 0
    local nVogaisI   := 0
    local nVogaisO   := 0
    local nVogaisU   := 0
    local cCaractere := ''
    local nI := 0
    local cMensagem  := ''

    cFrase := FwInputBox("Digite uma frase: ")

    // Loop para percorrer cada caractere da frase
    for nI := 1 to Len(cFrase)
        cCaractere := SubStr(cFrase, nI, 1)

        // Conta espaços em branco
        if cCaractere == " "
            nEspacos++
        endif

        // Conta vogais
        if cCaractere == "A" .or. cCaractere == "a"
            nVogaisA++
        elseif cCaractere == "E" .or. cCaractere == "e"
            nVogaisE++
        elseif cCaractere == "I" .or. cCaractere == "i"
            nVogaisI++
        elseif cCaractere == "O" .or. cCaractere == "o"
            nVogaisO++
        elseif cCaractere == "U" .or. cCaractere == "u"
            nVogaisU++
        endif
    next

    cMensagem := "Número de espaços em branco: " + AllTrim(Str(nEspacos)) + CRLF +;
                "Número de vogais A: " + AllTrim(Str(nVogaisA)) + CRLF +;
                "Número de vogais E: " + AllTrim(Str(nVogaisE)) + CRLF +;
                "Número de vogais I: " + AllTrim(Str(nVogaisI)) + CRLF +;
                "Número de vogais O: " + AllTrim(Str(nVogaisO)) + CRLF +;
                "Número de vogais U: " + AllTrim(Str(nVogaisU))

    FwAlertInfo(cMensagem)

    RestArea(aArea)
return
