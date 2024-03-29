#INCLUDE "TOTVS.CH"

User Function VE022()

    Local aCondicao  := {{1, "Necessita da esfera:", 0, 0},;
                        {2, "Necessita de limpeza:", 0, 0},;
                        {3, "Necessita troca do cabo ou conector:", 0, 0},;
                        {4, "Quebrado ou inutilizado:", 0, 0},;
                        {5, "Novissimo:", 0, 0},;
                        {0, "Encerrar", 0, 0}}
    Local nIndex     := 0
    Local nCodigo    := 0
    Local nQtd       := 0
    Local nTotMouses := 0
    Local cRelatorio := ""
    Local cMsg       := ""

    For nIndex := 1 To Len(aCondicao)
        cMsg += AllTrim(Str(aCondicao[nIndex][1])) + " - " + aCondicao[nIndex][2] + CRLF
    Next
    
    FwAlertInfo(cMsg)

    Do While .T.
        nCodigo := Val(FwInputBox("C�digo do defeito (0 para encerrar): "))

        If nCodigo == 0
            Exit
        EndIf

        //? Encontrar o �ndice correspondente ao tipo de defeito
        nIndex := aScan(aCondicao, {|x| x[1] == nCodigo})

        If nIndex > 0
            //? Solicitar a quantidade de mouses com defeito
            nQtd := Val(FwInputBox("Quantidade de mouses com defeito: "))
            //? Incrementar a quantidade
            aCondicao[nIndex][3] += nQtd
            //? Atualizar o total de mouses
            nTotMouses += nQtd
        Else
            FwAlertError("C�digo de defeito inv�lido.")
        EndIf
    EndDo

    cRelatorio := "Quantidade de mouses: " + AllTrim(Str(nTotMouses)) + CRLF + CRLF


    For nIndex := 1 To Len(aCondicao)
    
        aCondicao[nIndex][4] := (aCondicao[nIndex][3] / nTotMouses) * 100

        cRelatorio += AllTrim(aCondicao[nIndex][2]) + Replicate(" ", 32 - Len(aCondicao[nIndex][2])) +;
                    AllTrim(Str(aCondicao[nIndex][3])) + Replicate(" ", 25 - Len(AllTrim(Str(aCondicao[nIndex][3])))) +;
                    "correspondendo a " + AllTrim(Str(aCondicao[nIndex][4], 15, 2)) + "%" + CRLF
    Next

    FwAlertInfo(cRelatorio, "Relat�rio de Mouses")

Return
