#include "Totvs.ch"

User Function STRI08B()

    Local aArea            := GetArea()
    Local cFrase           := ""
    Local cFraseSemEspacos := ""
    Local cFraseInvertida  := ""
    Local cCaractere       := ''
    Local nCont            := 0
    Local cMensagem        := ''
    Local aPontuacoes      := {",", ".", "?", "!", ";", ":"}

    cFrase := FwInputBox("Digite uma sequência de caracteres: ")

    For nCont := 1 To Len(cFrase)
        cCaractere := SubStr(cFrase, nCont, 1)
        If ASCAN(aPontuacoes, cCaractere) == 0
            cFraseSemEspacos += cCaractere
        EndIf
    Next

    //? Inverte a frase
    For nCont := Len(cFraseSemEspacos) To 1 Step -1
        cFraseInvertida += SubStr(cFraseSemEspacos, nCont, 1)
    Next

    cFraseSemEspacos := AllTrim(Upper(cFraseSemEspacos))
    cFraseInvertida := AllTrim(Upper(cFraseInvertida))

    cMensagem := "Sequência original: " + cFraseSemEspacos + CRLF + ;
                 "Sequência invertida: " + cFraseInvertida + CRLF

    If cFraseSemEspacos == cFraseInvertida
        cMensagem += "É um palíndromo."
    Else
        cMensagem += "Não é um palíndromo."
    EndIf

    FwAlertInfo(cMensagem)

    RestArea(aArea)
Return
