#INCLUDE "totvs.ch"

/*/{Protheus.doc} VE004
Faça um Programa que leia um vetor de 10 caracteres, e diga quantas consoantes foram lidas. Imprima as consoantes.
@type function
@author Ruan Henrique
@since 11/23/2023
/*/
user function VE004()

    local aCaracteres := {}
    local cCarac      := ""
    local nCont       := 0
    local nConsoantes := 0
    local cMsg        := ''
    local lRet        := .F.

    for nCont := 1 to 4
        cCarac := Upper(FwInputBox("Digite o caracter " + AllTrim(Str(nCont)) + ": "))
        AAdd(aCaracteres, cCarac)
    next

        for nCont := 1 to Len(aCaracteres)
        cMsg += "Caracter " + AllTrim(Str(nCont)) + ": " + aCaracteres[nCont] + CRLF
        
        if Consoante(aCaracteres[nCont])
            lRet := .T.
            nConsoantes++
        endif
    next

    FwAlertInfo(cMsg + CRLF +;
    "Quantidade de consoantes: " + AllTrim(Str(nConsoantes)), "Caracteres digitados")

return(lRet)

static function Consoante(cCaracter)

    local cVogais := "AEIOU"
    local cChar   := Upper(cCaracter)
    local lRet    := .F.
    
    if Asc(cChar) >= Asc("A") .and. Asc(cChar) <= Asc("Z") .and. At(cChar, cVogais) == 0
        lRet := .T.
    endif

return (lRet)

