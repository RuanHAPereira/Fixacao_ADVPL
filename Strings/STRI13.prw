#INCLUDE "Totvs.ch"

/*/{Protheus.doc} STRI13
Jogo da palavra embaralhada. Desenvolva um jogo em que o usu�rio tenha que adivinhar uma palavra que ser� mostrada com as letras embaralhadas. 
O programa ter� uma lista de palavras lidas de um arquivo texto e escolher� uma aleatoriamente. O jogador ter� seis tentativas para adivinhar a palavra.
 Ao final a palavra deve ser mostrada na tela, informando se o usu�rio ganhou ou perdeu o jogo.
@type function
@author Ruan Henrique
@since 1/17/2024
/*/

user function STRI13()

    local aPalavras := {"PROGRAMACAO", "FORCA", "DESENVOLVIMENTO", "ADVPL", "JOGO"}
    local cPalavra := EscolherPalavraAleatoria(aPalavras)
    local cPalavraAdivinhada := Replicate("_", Len(cPalavra))
    local nTentativas := 6
    local cLetra := ""
    local lEncontrou := .F.
    local i := 0

    // Embaralha a palavra inicial
    cPalavra := EmbaralharPalavra(cPalavra)

    // Loop principal do jogo
    do while nTentativas > 0
        // Exibe a situa��o atual
        ExibirStatus(cPalavraAdivinhada, nTentativas)

        // Solicita ao usu�rio uma letra
        cLetra := Upper(FwInputBox("Digite uma letra: "))

        // Verifica se a entrada � v�lida
        if Len(cLetra) == 1 .and. cLetra >= "A" .and. cLetra <= "Z"
            lEncontrou := .F.

            // Verifica se a letra est� na palavra
            for i := 1 to Len(cPalavra)
                if Substr(cPalavra, i, 1) == cLetra
                    lEncontrou := .T.
                    // Atualiza a palavra adivinhada com a letra correta
                    cPalavraAdivinhada := Substr(cPalavraAdivinhada, 1, i - 1) + cLetra + Substr(cPalavraAdivinhada, i + 1)
                endif
            next

            // Verifica se a palavra foi completamente adivinhada
            if Alltrim(cPalavraAdivinhada) == cPalavra
                FwAlertInfo("Voc� acertou a palavra: " + cPalavra, "Parab�ns!" )
                FwAlertInfo("A palavra de forma correta �: " + cPalavra)
                exit
            endif

            // Verifica se a letra n�o est� na palavra
            if !lEncontrou
                nTentativas--
                FwAlertInfo("Tentativas restantes: " + Str(nTentativas),"Voc� errou!" )
            endif
        else
            FwAlertInfo("Por favor, digite uma letra v�lida.")
        endif
    enddo

    // Verifica se o jogador foi derrotado
    if Alltrim(cPalavraAdivinhada) <> cPalavra
        FwAlertInfo(" A palavra era: " + cPalavra, "Voc� foi derrotado!")
    endif
return

// Fun��o para escolher uma palavra aleat�ria da lista
Static Function EscolherPalavraAleatoria(aPalavras)
    Return aPalavras[Random(1, Len(aPalavras))]
Return

// Fun��o para embaralhar uma palavra
Static Function EmbaralharPalavra(cPalavra)
    Local aLetras := {}
    Local i := 0
    Local cPalaEmbar := ""

    For i := 1 To Len(cPalavra)
        AAdd(aLetras, Substr(cPalavra, i, 1))
    Next

    aLetras := Embararray(aLetras)

    For i := 1 To Len(aLetras)
        cPalaEmbar += aLetras[i]
    Next

Return cPalaEmbar


// Fun��o para exibir o status atual do jogo
Static Function ExibirStatus(cPalavraAdivinhada, nTentativas)
    Local cStatus := "Palavra adivinhada: " + cPalavraAdivinhada + CRLF + ;
                    "Tentativas Restantes: " + Str(nTentativas)

    FwAlertInfo(cStatus)
Return

// Fun��o para embaralhar um array
Static Function Embararray(aArray)
    Local i := 0
    Local n := 0
    Local temp := ""

    For i := Len(aArray) To 2 Step -1
        n := Random(1, i)
        temp := aArray[i]
        aArray[i] := aArray[n]
        aArray[n] := temp
    Next

Return aArray

