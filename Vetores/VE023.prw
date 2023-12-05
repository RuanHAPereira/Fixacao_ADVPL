/*-----------------------------------------------------------------------
/*/{Protheus.doc} SPACEDISK
/*/
/* Programa para calcular e identificar usu�rios com maior espa�o ocupado
/* no servidor de arquivos.
/*-----------------------------------------------------------------------
@type function
-----------------------------------------------------------------------*/
User Function SpaceDisk()

    Local cFileName := "usuarios.txt"
    Local aUsers := {}
    Local nTotalSpace := 0
    Local nMaxSpace := 0
    Local cMaxUser := ""

    /* Leitura do arquivo "usuarios.txt" */
    If !FileExist(cFileName)
        MsgInfo("Arquivo de usu�rios n�o encontrado!")
        Return
    EndIf

    /* Abertura do arquivo */
    Local nFile := FOpen(cFileName, FO_READ)
    If nFile == -1
        MsgInfo("Erro ao abrir o arquivo de usu�rios!")
        Return
    EndIf

    /* Leitura dos dados do arquivo */
    While !FEof(nFile)
        Local cLine := FRead(nFile)
        If !Empty(cLine)
            AAdd(aUsers, cLine)
        EndIf
    EndWhile

    /* Fechamento do arquivo */
    FClose(nFile)

    /* Processamento dos dados */
    ForEach cUser In aUsers
        Local aUserData := Explode(cUser, " ")
        If Len(aUserData) == 2
            Local cUserName := aUserData[1]
            Local nSpace := Val(aUserData[2])
            nTotalSpace += nSpace

            /* Verifica��o do usu�rio com maior espa�o ocupado */
            If nSpace > nMaxSpace
                nMaxSpace := nSpace
                cMaxUser := cUserName
            EndIf
        EndIf
    Next

    /* Exibi��o dos resultados */
    MsgInfo("Espa�o total ocupado pelos usu�rios: " + Str(nTotalSpace))
    MsgInfo("Usu�rio com maior espa�o ocupado: " + cMaxUser + " - Espa�o: " + Str(nMaxSpace))

Return
