#include "totvs.ch"

User Function STRI07B()

    Local aArea       := GetArea()
    Local cFrase      := ""
    Local aContadores := {{' ', 0},;
                        {'A', 0},;
                        {'E', 0},;
                        {'I', 0},;
                        {'O', 0},;
                        {'U', 0}}
    Local cCaractere  := ''
    Local nIndex      := 0
    Local nI          := 0
    Local cMensagem   := ""

    cFrase := FwInputBox("Digite uma frase: ")

    For nI := 1 To Len(cFrase)
        cCaractere := Upper(SubStr(cFrase, nI, 1))

        //? Utilizando ASCAN
        nIndex := ASCAN(aContadores, {|x| x[1] == cCaractere})

        If nIndex > 0
            aContadores[nIndex][2]++
        EndIf
    Next

    cMensagem := "Análise da frase:" + CRLF +;
                 "-----------------" + CRLF +;
                 "Número de espaços em branco: " + AllTrim(Str(aContadores[1][2])) + CRLF +;
                 "Número de vogais A: " + AllTrim(Str(aContadores[2][2])) + CRLF +;
                 "Número de vogais E: " + AllTrim(Str(aContadores[3][2])) + CRLF +;
                 "Número de vogais I: " + AllTrim(Str(aContadores[4][2])) + CRLF +;
                 "Número de vogais O: " + AllTrim(Str(aContadores[5][2])) + CRLF +;
                 "Número de vogais U: " + AllTrim(Str(aContadores[6][2]))

    FwAlertInfo(cMensagem)

    RestArea(aArea)
Return
