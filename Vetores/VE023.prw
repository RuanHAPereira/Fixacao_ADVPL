/*-----------------------------------------------------------------------
/*/{Protheus.doc} SPACEDISK
/*/
/* Programa para calcular e identificar usuários com maior espaço ocupado
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
        MsgInfo("Arquivo de usuários não encontrado!")
        Return
    EndIf

    /* Abertura do arquivo */
    Local nFile := FOpen(cFileName, FO_READ)
    If nFile == -1
        MsgInfo("Erro ao abrir o arquivo de usuários!")
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

            /* Verificação do usuário com maior espaço ocupado */
            If nSpace > nMaxSpace
                nMaxSpace := nSpace
                cMaxUser := cUserName
            EndIf
        EndIf
    Next

    /* Exibição dos resultados */
    MsgInfo("Espaço total ocupado pelos usuários: " + Str(nTotalSpace))
    MsgInfo("Usuário com maior espaço ocupado: " + cMaxUser + " - Espaço: " + Str(nMaxSpace))

Return
