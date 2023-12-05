#INCLUDE "Protheus.ch"

/*/{Protheus.doc} ContaConsoantes
Função que lê um vetor de 10 caracteres e conta quantas consoantes foram lidas. Imprime as consoantes.
@type function
@author Terminal de Informação
@since 01/12/2023
@version 1.0
    @example
    u_ContaConsoantes()
/*/

User Function VE004C()
    Local aCaracteres := {}
    Local aVogais := {'A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'}
    Local cCarac := ""
    Local nCont := 0
    Local nConsoantes := 0
    Local cMsg := ''

    For nCont := 1 To 4
        cCarac := Upper(FwInputBox("Digite o caracter " + AllTrim(Str(nCont)) + ": "))
        AAdd(aCaracteres, cCarac)
    Next

    //? Verifica cada caractere no array usando Len() e conta as consoantes com nConsoantes++
    For nCont := 1 To Len(aCaracteres)
        //? Utiliza a função ASCAN para verificar se o caractere não é uma vogal
        If Ascan(aVogais, aCaracteres[nCont]) == 0
            nConsoantes++
            cMsg += "Consoante " + AllTrim(Str(nConsoantes)) + ": " + aCaracteres[nCont] + CRLF
        EndIf
    Next

    //? Imprime somente as consoantes
    If nConsoantes > 0
        FwAlertInfo(cMsg + CRLF +;
        "Quantidade de consoantes: " + AllTrim(Str(nConsoantes)), "Caracteres digitados")
    Else
        FwAlertInfo("Nenhuma consoante foi digitada.", "Caracteres digitados")
    EndIf

Return
