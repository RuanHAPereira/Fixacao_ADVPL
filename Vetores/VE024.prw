#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} VE024
Fa�a um programa que simule um lan�amento de dados. 
Lance o dado 100 vezes e armazene os resultados em um vetor . 
Depois, mostre quantas vezes cada valor foi conseguido. Dica: use um vetor de contadores(1-6) e 
uma fun��o para gerar numeros aleat�rios, simulando os lan�amentos dos dados.
@type function
@author Ruan Henrique
@since 12/18/2023
/*/

User Function VE024()

    Local aContadores := {}
    Local nCont       := 0
    Local nResultado  := 0
    Local nLances     := 100
    Local cMsg        := ""

    For nCont := 1 To 6
        AAdd(aContadores, {nCont, 0})
    Next

    For nCont := 1 To nLances
        nResultado := Randomize(1, 7)
        aContadores[nResultado][2]++
    Next 

    cMsg := "Resultados dos lan�amentos:" + CRLF + CRLF

    For nCont := 1 To Len(aContadores)
        cMsg += "Face " + AllTrim(Str(aContadores[nCont][1])) + ": " + AllTrim(Str(aContadores[nCont][2])) + CRLF
    Next

    FwAlertInfo(cMsg, "Contagem dos Resultados")

Return
