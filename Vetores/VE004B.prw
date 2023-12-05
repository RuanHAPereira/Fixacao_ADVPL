#INCLUDE "totvs.ch"

/*/{Protheus.doc} VE004
Faça um Programa que leia um vetor de 10 caracteres, e diga quantas consoantes foram lidas. Imprima as consoantes.
@type function
@author Ruan Henrique
@since 11/30/2023
/*/
user function VE004B()

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
        
        // Utilizando operador $ para verificar se o caractere não é uma vogal
        if !aCaracteres[nCont] $ 'AEIOUaeiou'
            lRet := .T.
            nConsoantes++
        endif
    next

    FwAlertInfo(cMsg + CRLF +;
    "Quantidade de consoantes: " + AllTrim(Str(nConsoantes)), "Caracteres digitados")

return lRet
