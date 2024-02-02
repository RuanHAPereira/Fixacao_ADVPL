#INCLUDE "Totvs.ch"

/*/{Protheus.doc} STRI13
Jogo da palavra embaralhada. Desenvolva um jogo em que o usuário tenha que adivinhar uma palavra que será mostrada com as letras embaralhadas. 
O programa terá uma lista de palavras lidas de um arquivo texto e escolherá uma aleatoriamente. O jogador terá seis tentativas para adivinhar a palavra.
Ao final a palavra deve ser mostrada na tela, informando se o usuário ganhou ou perdeu o jogo.
@type function
@author Ruan Henrique
@since 1/17/2024
/*/

User Function STRI13()

    local aArea       := GetArea()
    local aPalavras   := {"PROGRAMACAO", "FORCA", "DESENVOLVIMENTO", "ADVPL", "JOGO"} //? Usando array para as palavras já que não usei arquivo txt.
    local cPOriginal  := Aleatoria(aPalavras)
    local cPalavra    := Embaralha(cPOriginal)
    local cPalavraAdivinhada := Replicate("_", Len(cPalavra))
    local nTentativas := 6 
    local cLetra      := ""
    local lEncontrou  := .F.
    local nCont       := 0

    Do While nTentativas > 0
        //? Exibe a situação atual
        ExibirStatus(cPalavraAdivinhada, nTentativas)

        cLetra := Upper(FwInputBox("Digite uma letra: "))

        If Len(cLetra) == 1 .And. cLetra >= "A" .And. cLetra <= "Z"
            lEncontrou := .F.

            //? Verifica se a letra está na palavra
            For nCont:= 1 To Len(cPalavra)
                If Substr(cPalavra, nCont , 1) == cLetra
                    lEncontrou := .T.
                    //? Atualiza a palavra adivinhada com a letra correta
                    cPalavraAdivinhada := Substr(cPalavraAdivinhada, 1, nCont  - 1) + cLetra + Substr(cPalavraAdivinhada, nCont  + 1)
                EndIf
            Next

            //? Verifica se a palavra foi completamente adivinhada
            If Alltrim(cPalavraAdivinhada) == cPalavra
                FwAlertInfo("Você acertou a palavra: " + cPOriginal, "Parabéns!" )
                Exit
            EndIf

            //? Verifica se a letra não está na palavra
            If !lEncontrou
                nTentativas--
                FwAlertInfo("Tentativas restantes: " + Str(nTentativas),"Você errou!" )
            EndIf
        Else
            FwAlertInfo("Por favor, digite uma letra válida.")
        EndIf
    EndDo

    If Alltrim(cPalavraAdivinhada) <> cPalavra
        FwAlertInfo("A palavra era: " + cPOriginal, "Você foi derrotado!")
    EndIf

    RestArea(aArea)
Return

//? Função para escolher uma palavra aleatória da lista
Static Function Aleatoria(aPalavras)

Return aPalavras[Random(1, Len(aPalavras))]


//? Função para embaralhar uma palavra
Static Function Embaralha(cPalavra)

    local aLetras := {}
    local nCont  := 0
    local cPalaEmbar := ""

    For nCont  := 1 To Len(cPalavra)
        AAdd(aLetras, Substr(cPalavra, nCont , 1))
    Next

    aLetras := Embararray(aLetras)

    For nCont  := 1 To Len(aLetras)
        cPalaEmbar += aLetras[nCont ]
    Next

Return cPalaEmbar


//? Função para exibir o status atual do jogo
Static Function ExibirStatus(cPalavraAdivinhada, nTentativas)

    local cStatus := ""

    cStatus := "Palavra adivinhada: " + cPalavraAdivinhada + CRLF + ;
                    "Tentativas Restantes: " + Str(nTentativas)

    FwAlertInfo(cStatus)
Return

//? Função para embaralhar um array
Static Function Embararray(aArray)

    local nCont  := 0
    local n := 0
    local temp := ""

    For nCont  := Len(aArray) To 2 Step -1
        n := Random(1, nCont )
        temp := aArray[nCont ]
        aArray[nCont ] := aArray[n]
        aArray[n] := temp
    Next

Return aArray

